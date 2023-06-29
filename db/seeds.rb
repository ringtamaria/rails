# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

def import_companies_from_csv(file_path)
  CSV.foreach(file_path, headers: true) do |row|
    Company.create(企業コード: row['企業コード'], 企業名: row['企業名'], 上場状況: row['上場状況'])
  end
end


file_path = "ダミー企業情報.csv" # インポートするCSVファイルのパスを指定してください
import_companies_from_csv(file_path)


