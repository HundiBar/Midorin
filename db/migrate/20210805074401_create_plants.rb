class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :care
      t.string :cover_picture
      t.integer :watering_schedule

      t.timestamps
    end
  end
end
