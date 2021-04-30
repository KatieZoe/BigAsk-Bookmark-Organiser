class Category < ApplicationRecord
  
  #Associations
  belongs_to :user, :optional => true
  has_many :bookmarks
end
