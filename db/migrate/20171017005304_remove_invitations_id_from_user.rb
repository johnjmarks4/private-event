class RemoveInvitationsIdFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :invitations_id
  end
end
