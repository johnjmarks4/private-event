class RemoveCreatorFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :creator
  end
end
