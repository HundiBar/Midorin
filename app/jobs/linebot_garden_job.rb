class LinebotGardenJob < ApplicationJob

  def perform(client, user)
    # user_pots = user.pots
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

  # def notification

  #   if water_in_days == 0
  #     message = "You need to water #{nickname? ? nickname : plant.name} today."
  #   elsif water_in_days <= -1
  #     message = "It has been #{water_in_days * -1} days since #{nickname? ? nickname : plant.name} has been watered"
  #   elsif water_in_days == 1
  #     message = "You need to water #{nickname? ? nickname : plant.name} tomorrow."
  #   else
  #     message = "#{nickname? ? nickname : plant.name} doesn't need to be watered today!"
  #   end

  # end
end

# class LinebotLoadToPantryJob < ApplicationJob

#   def perform(user)
#     shopping_list = user.shopping_lists.last
#     return 'You have no shopping lists!' if shopping_list.nil?

#     shopping_amounts = shopping_list.shopping_amounts
#     load_to_pantry(shopping_amounts, user)

#     shopping_list.destroy
#   end

#   private

#   def load_to_pantry(shopping_amounts, user)
#     shopping_amounts.each do |shopping_amount|
#       pantry_item = ItemAmount.new(item_id: shopping_amount.item.id)
#       pantry_item.user = user
#       pantry_item.description = shopping_amount.description
#       pantry_item.save
#     end
#   end
# end
