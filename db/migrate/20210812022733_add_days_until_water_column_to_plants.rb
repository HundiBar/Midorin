class AddDaysUntilWaterColumnToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :days_until_water, :integer
  end
end
