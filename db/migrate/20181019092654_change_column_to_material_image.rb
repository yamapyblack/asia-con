class ChangeColumnToMaterialImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :materials, :image, :sub_images
  end
end
