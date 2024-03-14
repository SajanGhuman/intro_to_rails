class AnimeList < ApplicationRecord
    has_many :user_anime_lists
    has_many :users, through: :user_anime_lists
    validates :jap_name, presence: true
  end
  