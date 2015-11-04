class AddItemToList < ActiveRecord::Migration
  def change
    add_column :lists, :first, :string
    add_column :lists, :second, :string
    add_column :lists, :third, :string
    add_column :lists, :fourth, :string
    add_column :lists, :fifth, :string
    add_column :lists, :location1, :string
    add_column :lists, :price1, :float, default: 0
    add_column :lists, :description1, :text
    add_column :lists, :location2, :string
    add_column :lists, :price2, :float, default: 0
    add_column :lists, :description2, :text
    add_column :lists, :location3, :string
    add_column :lists, :price3, :float, default: 0
    add_column :lists, :description3, :text
    add_column :lists, :location4, :string
    add_column :lists, :price4, :float, default: 0
    add_column :lists, :description4, :text
    add_column :lists, :location5, :string
    add_column :lists, :price5, :float, default: 0
    add_column :lists, :description5, :text

  end
end
