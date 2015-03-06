class CreateVehicules < ActiveRecord::Migration
  def change
    create_table :vehicules do |t|
      t.integer :killed
      t.integer :serious_injured
      t.integer :minor_injured
      t.integer :uninjured
      t.date :released
      t.references :accident, index: true
      t.references :car_category, index: true
      t.references :insurance, index: true
      t.references :membership, index: true
      t.references :assignment, index: true

      t.timestamps null: false
    end
    add_foreign_key :vehicules, :accidents
    add_foreign_key :vehicules, :car_categories
    add_foreign_key :vehicules, :insurances
    add_foreign_key :vehicules, :memberships
    add_foreign_key :vehicules, :assignments
  end
end
