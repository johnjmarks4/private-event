class AddAttendedEventIdToInvitation < ActiveRecord::Migration[5.1]
  def change
    add_reference :invitations, :attended_event
  end
end
