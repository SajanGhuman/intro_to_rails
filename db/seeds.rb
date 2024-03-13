require 'net/http'
require 'json'

uri = URI('https://api.jikan.moe/v4/anime')
response = Net::HTTP.get_response(uri)
anime_list = JSON.parse(response.body)['data']

anime_list.each do |row|
    AnimeList.create(
        eng_name: row["title_english"],
        jap_name: row["title_japanese"],
        episode: row["episodes"],
        status: row["status"],
        rating: row["rating"],
    )
end