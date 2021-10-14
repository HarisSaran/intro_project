# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

Game.delete_all
PublisherCompany.delete_all

filename = Rails.root.join("db/GamesSales.csv")

puts "loading games from CSV: #{filename}"

csv_data = File.read(filename)
games = CSV.parse(csv_data, headers: true, encoding: "utf-8")

games.each do |m|
  # puts m["Game"]
  publisher_company = PublisherCompany.find_or_create_by(name: m["Publisher"])

  if publisher_company && publisher_company.valid?
    game = publisher_company.games.create(
      name:                m["Game"],
      year:                m["Year"],
      north_america_sales: m["North America"]
    )
    puts "Game invalid #{m['Game']}" unless game&.valid?

  else
    puts "Not Valid Publisher company, #{m['Publisher']} for the game #{m['Game']}"
  end
end

puts "publisher comps : #{PublisherCompany.count}"
puts "games comps : #{Game.count}"
