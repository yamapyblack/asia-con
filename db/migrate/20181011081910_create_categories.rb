class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories, id: false do |t|
      t.integer :category_id
      t.string :name
      t.integer :sort_no
      t.integer :child_category_id
      t.string :child_name
      t.integer :child_sort_no

      t.timestamps
    end
  end
end
