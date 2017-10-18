class AddMonthToEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :month, :integer
    add_column :events, :month, :integer
  end
end