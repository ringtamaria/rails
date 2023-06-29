class AddListingStatusToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :上場状況, :string
  end
end
