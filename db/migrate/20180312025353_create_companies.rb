class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :icon_image
      t.string :company_name
      t.text :address
      t.string :phone_no
      t.string :mail_address
      t.string :person
      t.string :url

      t.timestamps
    end
  end
end
