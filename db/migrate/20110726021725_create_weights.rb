class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :user_id
      t.decimal :weight
      t.date :inserted_on

      t.timestamps
    end
  end
end
