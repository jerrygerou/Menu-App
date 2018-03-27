class CreateCategoryAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :category_assignments do |t|
      t.integer :category_id, null: false
      t.integer :menu_item_id, null: false

      t.timestamps
    end
  end
end
