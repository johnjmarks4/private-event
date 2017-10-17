class AddInvitationsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :invitations, foreign_key: true
  end
end
