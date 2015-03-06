class CreateRoadCategories < ActiveRecord::Migration
  def change
    create_table :road_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
