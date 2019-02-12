class AddColumnToMaterialMainImage < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :main_image, :string
  end

end
