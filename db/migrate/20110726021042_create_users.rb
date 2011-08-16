class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :login
      t.string :password_digest
      t.string :username
      t.date :birth
      t.date :sign_at
      t.decimal :height
      t.integer :profile_id
      t.integer :weight_id
      t.integer :physical_activity
      t.timestamps
    end
  end
end
