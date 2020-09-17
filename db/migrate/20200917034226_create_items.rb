class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :decription
      t.integer :category
      t.integer :status
      t.integer :shopping_cost
      t.integer :shopping_area
      t.integer :shopping_days
      t.integer :price
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
