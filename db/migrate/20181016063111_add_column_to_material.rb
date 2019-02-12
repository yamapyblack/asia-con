class AddColumnToMaterial < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :title, :string, after: :user_id
    add_column :materials, :stock, :integer
  end
end
