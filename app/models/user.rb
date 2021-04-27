class User < ApplicationRecord
  has_many :categories
  has_many :bookmarks, through: :categories
  has_secure_password
end
