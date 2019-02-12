class CreateEnumerations < ActiveRecord::Migration[5.1]
  def change
    create_table :enumerations do |t|
      t.string :code_type
      t.integer :code_id
      t.string :value

      t.timestamps
    end
  end
end
