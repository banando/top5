class AddItemToList < ActiveRecord::Migration
  def change
    add_column :lists, :first, :text
    add_column :lists, :second, :text
    add_column :lists, :third, :text
    add_column :lists, :fourth, :text
    add_column :lists, :fifth, :text
  end
end
