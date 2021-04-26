class Catagory < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :bookmarks
end
