class AddColumsToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :scientific_name, :string
    add_column :plants, :temperature, :string
    add_column :plants, :light, :integer
    add_column :plants, :toxicity, :string
  end
end
