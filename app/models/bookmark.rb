class Bookmark < ApplicationRecord
  belongs_to :categories, :optional => true
end
