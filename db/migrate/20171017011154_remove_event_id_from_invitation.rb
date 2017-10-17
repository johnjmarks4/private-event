class RemoveEventIdFromInvitation < ActiveRecord::Migration[5.1]
  def change
    remove_column :invitations, :event_id
  end
end
