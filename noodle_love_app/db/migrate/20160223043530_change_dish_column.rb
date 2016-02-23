class ChangeDishColumn < ActiveRecord::Migration
  def change
  	remove_column :reviews, :dish_id, :integer
  end
end
