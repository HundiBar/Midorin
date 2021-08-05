class CreatePots < ActiveRecord::Migration[6.0]
  def change
    create_table :pots do |t|
      t.string :nickname
      t.datetime :last_watered
      t.datetime :date
      t.references :plant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
