class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    drop_table :events

    create_table :events do |t|
      t.references :user
      t.string :description

      t.timestamps
    end
  end
end