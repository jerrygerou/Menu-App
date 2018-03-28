class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.boolean :in_order
      t.integer :menu_item_id

      t.timestamps
    end
  end
end
