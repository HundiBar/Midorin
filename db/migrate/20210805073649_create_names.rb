class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :description
      t.string :care
      t.string :cover_picture
      t.integer :watering_schedule

      t.timestamps
    end
  end
end
