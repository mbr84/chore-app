class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :passaword_digest, null: false
      t.string :session_token, null: false
      t.integer :family_id, null: false, index: true
      t.integer :points, default: 0

      t.timestamps null: false
    end
  end
end
