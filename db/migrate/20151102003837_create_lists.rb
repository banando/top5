class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :topic
      t.integer :likes
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
