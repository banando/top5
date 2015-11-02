class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :topic
      t.integer :likes

      t.timestamps null: false
    end
  end
end
