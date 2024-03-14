class AnimeList < ApplicationRecord
  has_many :anime_comments, dependent: :destroy
  has_many :user, through: :anime_comments
  validates :jap_name, presence: true
  validates_associated :user
  end
  