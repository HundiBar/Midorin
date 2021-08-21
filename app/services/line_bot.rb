require "json"
require "net/http"
require "uri"
require "tempfile"

class LineBot

  protect_from_forgery except: :callback

  def share
    pot = Pot.find(params[:id])
    LinebotNotificationJob.perform_now(pot, client, current_user)

    redirect_to pots_path
  end

  def callback
    body = request.body.read

    signature = request.env["HTTP_X_LINE_SIGNATURE"]
    unless client.validate_signature(body, signature)
      error 400 do "Bad Request" end
    end
    events = client.parse_events_from(body)
    events.each do |event|
      # Focus on the message events (including text, image, emoji, vocal.. messages)
      return if event.class != Line::Bot::Event::Message

      case event.type
      # when receive a text message
      when Line::Bot::Event::MessageType::Text
        user_name = ""
        user_id = event["source"]["userId"]
        response = client.get_profile(user_id)
        if response.class == Net::HTTPOK
          contact = JSON.parse(response.body)
          p contact
          user_name = contact["displayName"]
        else
          # Can't retrieve the contact info
          p "#{response.code} #{response.body}"
        end

      # The answer mecanism is here!
        send_bot_message(
          bot_answer_to(event.message["text"], user_name),
          client,
          event
        )
      end
    end
    "OK"
  end

  private

  def send_bot_message(message, client, event)
    message_hash = { type: "text", text: message }
    client.reply_message(event["replyToken"], message_hash)

    # Log prints
    # p 'Bot message sent!'
    # p event["replyToken"]
    # p message_hash
    # p client

  end

  def bot_answer_to(a_question, user_name)
  # Only answer to messages with "bob"
    if a_question.match?(/say (hello|hi) to/i)
      "Hello #{a_question.match(/say (hello|hi) to (.+)\b/i)[2]}!!"
    elsif a_question.match?(/(Hi|Hey|Bonjour|Hi there|Hey there|Hello).*/i)
      "Hello " + user_name + ", how are you doing today?"
    elsif a_question.match?(/how\s+.*are\s+.*you.*/i)
      "I am fine, " + user_name
    elsif a_question.end_with?('?')
      "Good question, " + user_name + "!"
    elsif a_question.match?("#{Pot.nickname}")
      "#{Pot.nickname} is doing well."
    else
      ["I couldn't agree more.", "Great to hear that.", "Kinda makes sense."].sample
    end
  end

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
        client.reply_message(event['replyToken'], { type: 'text', text: 'Please sign up with LINE on midorin.one'})
      end
      user = User.find_by(line_id: id)

      case event.type
      when Line::Bot::Event::MessageType::Text
        # if
          event['source']['groupId']
          # group_line_id = event['source']['groupId']
          # unless Household.exists?(line_id: group_line_id)
          #   household = Household.create(line_id: group_line_id)
          #   user.update(household_id: household.id)  # update household LINE ID everytime this user added Pantry bot to a new group
          # end
        # end
      end

      return user
      'OK'
    end
  end

end

