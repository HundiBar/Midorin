class LinebotNotificationJob < ApplicationJob

  def perform(pot, client, user)
    message_text = pot.list_pots
    # list = shopping_list.shopping_amounts.map.with_index { |ingredient, index| "#{index + 1}. #{ingredient.item.item_name}: #{ingredient.description}" }.join("\n")
    # message_text = list.empty? ? "You have no shopping lists!" : "Heyo 👋! Here's your new shopping list for today, #{Date.today.to_formatted_s(:rfc822)}\n#{list}"

    destination = user.line_id
    message = {
      type: 'text',
      text: message_text
    }
    client.push_message(destination, message)
  end

  def list_pots
    if pots.empty?
      "You have no pots. You need to add a pot first!"
    else
      "These pots need your help!"
        pots_needing_water = Pot.pots_in_danger
        pots_needing_water.each do |pot|
        pot.notification
      end
    end
  end

end
