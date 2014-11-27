class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id:false do |t|
      t.integer :steam_id, limit: 8, null: false, default: nil
      t.integer :dota2_id, limit: 8
      t.string :name, limit: 100
      t.string :avatar, limit: 100

      t.timestamps
    end
    execute %Q{ ALTER TABLE "users" ADD PRIMARY KEY ("steam_id"); }
  end
end
