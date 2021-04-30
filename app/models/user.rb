class User < ApplicationRecord
  #Associations
  has_many :categories
  has_many :bookmarks, through: :categories

  #bcript attribute
  has_secure_password
  
  after_create :default_categories

  #Private function to create default categories for all new users so that destroy category option works correctly
  private
  def default_categories
    self.categories.create :name => 'Unsorted'
  end

end
