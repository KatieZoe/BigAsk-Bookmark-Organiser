class Bookmark < ApplicationRecord
  #Association
  belongs_to :categories, :optional => true
end
