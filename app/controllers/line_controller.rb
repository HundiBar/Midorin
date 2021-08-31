class LineController < ApplicationController

  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def callback

    skip_authorization

    linebot = LineBot.new(line_params[:line][:destination])
    body = request.body.read
    events = linebot.client.parse_events_from(body)
    user = get_ids(events)

    events.each do |event|
      case event.type
        # when receive a text message
      when Line::Bot::Event::MessageType::Text

        if event.message['text'].downcase.include?('hello')
          response = "Hello"
        elsif event.message['text'].downcase.include?('garden')
          response = LinebotGardenJob.perform_now(linebot.client, user)
        elsif event.message['text'].downcase == "#{user.name.downcase}"
          response = "Here is #{user.pots.first.nickname}'s information."
        else
          response = "I don't understand!"
        end
        message_hash = {
          type: 'text',
          text: response
        }
        linebot.client.reply_message(event['replyToken'], message_hash)
        'OK'
      end
    end
  end

  private

  def get_ids(events)
    events.each do |event|
      id = event['source']['userId']
      unless User.exists?(line_id: id)
        client.reply_message(event['replyToken'], { type: 'text', text: 'Please sign up with LINE on www.midorin.one'})
      end
      user = User.find_by(line_id: id)
      return user
      'OK'
    end
  end

  def line_params
    params.permit(line: [:destination, :events])
  end
end
