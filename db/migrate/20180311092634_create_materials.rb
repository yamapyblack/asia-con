class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :headline
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
