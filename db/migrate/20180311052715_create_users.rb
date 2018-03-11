class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.integer :tier, default: 0
      t.integer :rank, default: 0

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :rank
  end
end
