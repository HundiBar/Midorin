class AddDaysToWaterColumnToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :days_to_water, :integer
  end
end
