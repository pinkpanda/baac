class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :lane_name
      t.integer :number_of_lanes
      t.integer :pr_number
      t.float :pr_distance
      t.integer :lane_number
      t.integer :lane_num_indice
      t.string :lane_alphanum_indice
      t.float :latitude
      t.float :longitude
      t.references :profile, index: true
      t.references :zone, index: true
      t.references :road_category, index: true
      t.references :plan, index: true
      t.references :infrastructure, index: true
      t.references :location, index: true
      t.references :traffic, index: true
      t.references :lane, index: true

      t.timestamps null: false
    end
    add_foreign_key :addresses, :profiles
    add_foreign_key :addresses, :zones
    add_foreign_key :addresses, :road_categories
    add_foreign_key :addresses, :plans
    add_foreign_key :addresses, :infrastructures
    add_foreign_key :addresses, :locations
    add_foreign_key :addresses, :traffics
    add_foreign_key :addresses, :lanes
  end
end
