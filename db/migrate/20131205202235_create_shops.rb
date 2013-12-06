class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.text :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.text :images, array: true, default: []

      t.timestamps
    end
  end
end
