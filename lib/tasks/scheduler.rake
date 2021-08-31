task :pots_in_danger => :environment do
  pots_needing_water = Pot.pots_in_danger
  pots_needing_water.each do |pot|
    message = pot.notification
    line_bot_service = LineBot.new(pot.user.line_id)
    line_bot_service.send_message(message)
  end
end
