class User < ApplicationRecord
  has_many :categories
  has_many :bookmarks, through: :categories
  has_secure_password

  after_create :default_categories


  private
  def default_categories
    self.categories.create :name => 'Unsorted'
  end

end
