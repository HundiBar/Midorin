class LinebotGardenJob < ApplicationJob

  def perform(client, user)
    linebot = LineBot.new(user.line_id)
    destination = user.line_id
    message_text = user.pots.empty? ? "You have no plants!" : "Here's your Midorin Garden," "\n\n#{load_pots(user.pots).join("\n")}"
    message = {
      type: 'text',
      text: message_text
    }
    linebot.client.push_message(destination, message)
  end

  private

  def load_pots(pots)
    pots.map do |pot|
      "#{pot.nickname || pot.plant.name} is doing good. \n#{pot.notification}#{pot[-1] ? "" : "\n"}"
    end
  end

end

