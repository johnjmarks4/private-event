class AddCreatedEventsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :created_events, foreign_key: true
  end
end
