class CreateTraffics < ActiveRecord::Migration
  def change
    create_table :traffics do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
