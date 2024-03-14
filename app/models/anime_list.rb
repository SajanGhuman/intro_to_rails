class AnimeList < ApplicationRecord
    has_many :users 
    validates :jap_name, presence: true
end
