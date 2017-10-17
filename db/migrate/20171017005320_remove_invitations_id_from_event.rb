class RemoveInvitationsIdFromEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :invitations_id
  end
end
