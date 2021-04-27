class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :name
      t.text :sort_option
      t.integer :frequency
      t.integer :user_id
      t.timestamp
    end
  end
end
