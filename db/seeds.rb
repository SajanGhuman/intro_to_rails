require 'net/http'
require 'json'

csv_file = Rails.root.join('db/anime.csv')
csv_data = File.read(csv_file)
anime = CSV.parse(csv_data, headers: true)

anime.each do |row|
    AnimeList.create(
        eng_name: row["English name"],
        jap_name: row["Japanese name"],
        episode: row["Episodes"],
        rating: row["Rating"],
    )
end

csv_file = Rails.root.join('db/users.csv')
csv_data = File.read(csv_file)
name = CSV.parse(csv_data, headers: true)

name.each do |row|
    User.create(
        name: row["Firstname"],
    )
end
