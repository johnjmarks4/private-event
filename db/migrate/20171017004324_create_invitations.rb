class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    drop_table :invitations

    create_table :invitations do |t|
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps
    end
  end
end