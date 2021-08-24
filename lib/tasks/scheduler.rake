task :pots_in_danger => :environment do
  pots_needing_water = Pot.pots_in_danger
  pots_needing_water.each do |pot|
    pot.notification
  end
end
