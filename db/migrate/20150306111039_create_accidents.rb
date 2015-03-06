class CreateAccidents < ActiveRecord::Migration
  def change
    create_table :accidents do |t|
      t.float :severity
      t.integer :injured
      t.integer :killed
      t.integer :minor_injured
      t.integer :serious_injured
      t.integer :uninjured
      t.references :agglomeration, index: true
      t.references :assignment, index: true
      t.references :atmoshpere, index: true
      t.references :car_category, index: true
      t.references :collision, index: true
      t.references :insurance, index: true
      t.references :intersection, index: true
      t.references :light, index: true
      t.references :membership, index: true
      t.text :address

      t.timestamps null: false
    end
  end
end
