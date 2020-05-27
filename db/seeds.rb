# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/COVID-19.csv', headers: true) do |row|
  Covid.create(
    prefecture: row['受診都道府県'],
    confirmed_date: row['確定日'],
                )
end
