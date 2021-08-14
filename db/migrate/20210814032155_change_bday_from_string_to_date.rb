class ChangeBdayFromStringToDate < ActiveRecord::Migration[6.0]
  def change
    change_column :pots, :birthday, :date
  end
end
