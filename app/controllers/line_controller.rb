class LineController < ApplicationController

  def call_back

    body = request.body.read
    events = client.parse_events_from(body)
    user = get_ids(events)

    events.each do |event|

      case event.type
        # when receive a text message
      when Line::Bot::Event::MessageType::Text

        # if event.message['text'].downcase.include?('add')
        #   response = LinebotAddToListJob.perform_now(event.message['text'], user, default_message)
        # elsif event.message['text'].downcase.include?('shopping done')
        #   response = LinebotLoadToPantryJob.perform_now(user)
        # elsif event.message['text'].downcase.include?('list')
        #   LinebotListGardenJob.perform_now(user.pots.all, client, user)
        # else
        response = "I don't understand!"
        # end
        message_hash = {
          type: 'text',
          text: response
        }
        client.reply_message(event['replyToken'], message_hash)

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
    end
    return user
    'OK'
  end

end
