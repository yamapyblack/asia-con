class CreateMaterialHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :material_hashtags do |t|
      t.integer :material_id
      t.integer :hashtag_id

      t.timestamps
    end
    add_index :material_hashtags, :material_id
    add_index :material_hashtags, :hashtag_id
    add_index :material_hashtags, [:material_id, :hashtag_id],unique: true
  end
end
