class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :cuisine_type

      t.timestamps null: false
    end
  end
end
