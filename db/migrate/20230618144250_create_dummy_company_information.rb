class CreateDummyCompanyInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :dummy_company_information do |t|
      t.string :company_code
      t.string :listing_status
      t.string :company_name
      t.string :company_name_kana
      t.string :postal_code
      t.string :address
      t.string :representative_name
      t.string :representative_name_kana
      t.string :phone_number
      t.decimal :sales_2022
      t.decimal :profit_2022
      t.decimal :sales_2021
      t.decimal :profit_2021
      t.decimal :sales_2020
      t.decimal :profit_2020

      t.timestamps
    end
  end
end
