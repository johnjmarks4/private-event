class AddDayToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :day, :integer
  end
end
