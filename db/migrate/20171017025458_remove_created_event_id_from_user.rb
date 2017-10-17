class RemoveCreatedEventIdFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :created_events_id, :string
  end
end
