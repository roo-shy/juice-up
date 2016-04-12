class CreateOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :juice_id
      t.boolean :shipped, default: false
      t.integer :quantity, default: 0
      t.decimal :shipping_cost, default: 0
      t.decimal :price

      t.timestamps null: false
    end
  end
end
