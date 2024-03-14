class User < ApplicationRecord
    validates :name, presence: true
    has_many :comments
    has_many :user_anime_lists
    has_many :anime_lists, through: :user_anime_lists
  end
  