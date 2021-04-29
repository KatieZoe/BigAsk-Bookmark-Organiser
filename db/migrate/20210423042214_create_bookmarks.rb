class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.text :name
      t.text :url
      t.integer :frequency
      t.integer :category_id
      t.timestamps
    end
  end
end
