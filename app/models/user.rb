class User < ApplicationRecord
    validates :name, presence: true
    has_many :comments
    has_many :anime
end
