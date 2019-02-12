class ChangeColumnToMaterial < ActiveRecord::Migration[5.1]
  def up
    change_column :materials, :image, 'json USING CAST(image AS json)'
  end

  def down
    change_column :materials, :image, :string
  end
end
