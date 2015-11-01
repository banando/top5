class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :location
      t.float :price
      t.text :details

      t.timestamps null: false
    end
  end
end
