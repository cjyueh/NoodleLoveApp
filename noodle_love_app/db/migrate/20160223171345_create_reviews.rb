class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant_name
      t.integer :dish_rating
      t.text :dish_review
      t.string :dish_image
      t.references :dish
      t.references :user	

      t.timestamps null: false
    end
  end
end
