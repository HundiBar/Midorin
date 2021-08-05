class DropNames < ActiveRecord::Migration[6.0]
  def change
    drop_table :names
  end
end
