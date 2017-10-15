class AddCreatorToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :creator, foreign_key: true
    add_foreign_key :events, :users
  end
end
