class User < ApplicationRecord
    has_many :comments
    has_many :anime_comments, dependent: :destroy
    has_many :anime_lists, through: :anime_comments
    validates_associated :comment
    validates :name, presence: true
  end
  