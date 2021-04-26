User.destroy_all
u1 = User.create :name => 'Katie', :email => 'kt@ba.com.au', :password => 'chicken'
u2 = User.create :name => 'Audrey', :email => 'ordri@ba.com.au', :password => 'chicken'
puts "#{User.count} users"

Catagory.destroy_all
c1 = Catagory.create :name => 'GA SEI-43', :sort_option => 'A to Z'
c2 = Catagory.create :name => 'Sales sites', :sort_option => 'newest to oldest'
puts "#{Catagory.count} catagories"

Bookmark.destroy_all
b1 = Bookmark.create :name => 'Gitbook', :url => 'https://chimai-dk.gitbook.io/sei43/'
b2 = Bookmark.create :name => 'Crazy sales', :url => 'https://www.crazysales.com.au/?aid=155&gclid=Cj0KCQjwvYSEBhDjARIsAJMn0lgFK-Eog9BfjKiCo1bncR45LKL7OM9VV-Mvmp76xwfyFGFSH235aVkaAp4FEALw_wcB'
puts "#{Bookmark.count} bookmarks"

################################# ASSOCIATIONS ################################

puts "Users to catagories"
u1.catagories << c1
u2.catagories << c2


puts "Catagories to bookmarks"
c1.bookmarks << b1
c2.bookmarks << b2
