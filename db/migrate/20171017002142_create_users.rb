class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :users

    create_table :users do |t|
      t.references :event
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end