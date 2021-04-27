User.destroy_all
u1 = User.create :name => 'Katie', :email => 'kt@ba.com.au', :password => 'chicken'
u2 = User.create :name => 'Audrey', :email => 'ordri@ba.com.au', :password => 'chicken'
puts "#{User.count} users"

Category.destroy_all
c1 = Category.create :name => 'GA SEI-43', :sort_option => 'A to Z'
c2 = Category.create :name => 'Sales sites', :sort_option => 'newest to oldest'
puts "#{Category.count} categories"

Bookmark.destroy_all
b1 = Bookmark.create :name => 'Gitbook', :url => 'https://chimai-dk.gitbook.io/sei43/'
b2 = Bookmark.create :name => 'Crazy sales', :url => 'https://www.crazysales.com.au/?aid=155&gclid=Cj0KCQjwvYSEBhDjARIsAJMn0lgFK-Eog9BfjKiCo1bncR45LKL7OM9VV-Mvmp76xwfyFGFSH235aVkaAp4FEALw_wcB'
puts "#{Bookmark.count} bookmarks"

################################# ASSOCIATIONS ################################

puts "Users to categories"
u1.categories << c1
u2.categories << c2


puts "Categories to bookmarks"
c1.bookmarks << b1
c2.bookmarks << b2
