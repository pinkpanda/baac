class CreateAtmoshperes < ActiveRecord::Migration
  def change
    create_table :atmoshperes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
