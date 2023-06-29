class AddCompanyNameAndListingStatusToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :company_name, :string
    add_column :companies, :listing_status, :string
  end
end
