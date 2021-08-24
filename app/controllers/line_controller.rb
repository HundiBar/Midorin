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
  # assumes that user will log in with their LINE account (that lets us know their LINE user ID)
  # when they sign up with LINE, Pantry LINE messaging bot will be automatically added as a friend
  # when an individual user commands Pantry bot, we use the LINE user ID from their message to find our user's web account
  # when they (presumably as a household head) add and talk to Pantry bot in a family chat group , we will update LINE group ID for their household
  # or create their household
  # every time there is a call back request from the group, we find the household with group ID, find the household head
  # (for now assuming only household head has account on Pantry app) and its head user, and make changes to the pantry of that head user

  events.each do |event|
    id = event['source']['userId']
    unless User.exists?(line_id: id)
      client.reply_message(event['replyToken'], { type: 'text', text: 'Please sign up with LINE on www.midorin.one'})
    end
    user = User.find_by(line_id: id)

    # case event.type
    # when Line::Bot::Event::MessageType::Text
    #   if event['source']['groupId']
    #     group_line_id = event['source']['groupId']
    #     unless Household.exists?(line_id: group_line_id)
    #       household = Household.create(line_id: group_line_id)
    #       user.update(household_id: household.id)  # update household LINE ID everytime this user added Pantry bot to a new group
    #     end
    #   end
    # end

    return user
    'OK'
  end
end
