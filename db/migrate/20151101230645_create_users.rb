class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password_digest
      t.integer :post_num
      t.integer :likes

      t.timestamps null: false
    end
  end
end
