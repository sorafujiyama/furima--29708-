class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :decription, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :shopping_cost_id, null: false
      t.integer :shopping_area_id, null: false
      t.integer :shopping_days_id, null: false
      t.integer :price, null: false
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
