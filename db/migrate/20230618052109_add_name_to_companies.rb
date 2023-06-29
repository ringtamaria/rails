class AddNameToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :企業名, :string
  end
end
