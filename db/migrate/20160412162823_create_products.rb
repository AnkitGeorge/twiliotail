class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price_in_dollars

      t.timestamps null: false
    end
  end
end
