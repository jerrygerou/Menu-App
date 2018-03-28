class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :tip
      t.decimal :total
      
      t.timestamps
    end
  end
end
