class AddAttendeeToInvitation < ActiveRecord::Migration[5.1]
  def change
    add_reference :invitations, :attendee
    remove_column :invitations, :user_id
  end
end
