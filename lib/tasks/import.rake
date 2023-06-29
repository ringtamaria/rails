require 'csv'

# rake import:dummy_company_information_data
namespace :import do
  desc "Import dummy company information data"
  task dummy_company_information_data: :environment do
    path = File.join Rails.root, "db/csv_data/dummy_company_information.csv"
    puts "path: #{path}"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          station_g_cd: row["企業コード"],
          station_name: row["企業名"],
          line_cd: row["上場状況"],
          pref_cd: row["企業名（カナ）"],
          address: row["郵便番号"],
          lon: row["所在地"],
          lat: row["代表者名"],
          lat: row["代表者名（カナ）"],
          lat: row["電話番号"],
          lat: row["売上（2022）"],
          lat: row["利益（2022）"],
          lat: row["売上（2021）"],
          lat: row["利益（2021）"],
          lat: row["売上（2020）"],
          lat: row["利益（2020）"]
      }
    end
    puts "start to create dummy company information"
    begin
      DummyCompanyInformation.create!(list) # モデル名に注意
      puts "completed!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "raised error: unknown attribute"
    end
  end
end
