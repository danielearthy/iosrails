class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.timestamps null: false
      t.datetime :ended_at
      t.string :name, null: false
      t.datetime :started_at, null: false
      t.integer :user_id, null: false
      t.string :address, :string
      t.float :lat, :float, null: false
      t.float :lon, :float, null: false
      
    end

    add_index :events, :user_id
  end
end
