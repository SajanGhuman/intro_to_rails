class Comment < ApplicationRecord
  belongs_to :user
  has_many :anime_comments, dependent: :destroy
  has_many :anime_lists, through: :anime_comments
  validates_associated :user
  validates :content, presence: true
end
