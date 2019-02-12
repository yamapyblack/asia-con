class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :icon_image
      t.string :phone_no
      t.string :mail_address

      t.timestamps
    end
  end
end
