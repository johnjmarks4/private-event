class AddInvitationsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :invitations, foreign_key: true
  end
end
