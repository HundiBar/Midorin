require "json"
require "net/http"
require "uri"
require "tempfile"

class LineBot

  def initialize(line_id)
    @line_id = line_id
  end

  def validate_signature
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      error 400 do 'Bad Request' end
    end
  end

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
    }
  end

  def send_message(text)
    destination = @line_id
    message = {
      type: 'text',
      text: text
    }
    client.push_message(destination, message)
  end

end
  # def bot_answer_to(a_question, user_name)
  # # Only answer to messages with "bob"
  #   if a_question.match?(/say (hello|hi) to/i)
  #     "Hello #{a_question.match(/say (hello|hi) to (.+)\b/i)[2]}!!"
  #   elsif a_question.match?(/(Hi|Hey|Bonjour|Hi there|Hey there|Hello).*/i)
  #     "Hello " + user_name + ", how are you doing today?"
  #   elsif a_question.match?(/how\s+.*are\s+.*you.*/i)
  #     "I am fine, " + user_name
  #   elsif a_question.match?(/how\s+.*are\s+.*you.*/i)
  #     "I am fine, " + user_name
  #   elsif a_question.end_with?('?')
  #     "Good question, " + user_name + "!"
  #   elsif a_question.match?("#{Pot.nickname}")
  #     "#{Pot.nickname} is doing well."
  #   else
  #     ["I couldn't agree more.", "Great to hear that.", "Kinda makes sense."].sample
  #   end
  # end

