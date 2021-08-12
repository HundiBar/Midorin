class AddHoursToWaterColumnToPlants < ActiveRecord::Migration[6.0]
  def change
        add_column :plants, :hours_to_water, :integer
  end
end
