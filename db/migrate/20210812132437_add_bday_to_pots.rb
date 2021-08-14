class AddBdayToPots < ActiveRecord::Migration[6.0]
  def change
    add_column :pots, :birthday, :string
  end
end
