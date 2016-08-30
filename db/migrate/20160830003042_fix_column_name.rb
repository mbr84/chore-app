class FixColumnName < ActiveRecord::Migration
  def change
    remove_column :users, :passaword_digest
    add_column :users, :password_digest, :string, null: false
  end
end
