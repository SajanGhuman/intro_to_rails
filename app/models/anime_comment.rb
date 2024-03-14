class AnimeComment < ApplicationRecord
  belongs_to :anime_list
  belongs_to :user
  validates_associated :user
  validates_associated :anime_list
end
