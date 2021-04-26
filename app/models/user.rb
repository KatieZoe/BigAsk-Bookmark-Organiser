class User < ApplicationRecord
  has_many :catagories
  has_many :bookmarks, through: :catagories
  has_secure_password
end
