class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.text :name
      t.text :url
      t.integer :frequency
      t.integer :catagory_id
      t.timestamp
    end
  end
end
