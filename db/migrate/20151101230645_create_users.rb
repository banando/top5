class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password_digest
      t.integer :post_num, default: 0
      t.integer :likes, default: 0

      t.timestamps null: false
    end
  end
end
