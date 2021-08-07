class ChangeLightColumnTypeForPlants < ActiveRecord::Migration[6.0]
  def change
    change_column :plants, :light, :string
  end
end
