class CreateInfrastructures < ActiveRecord::Migration
  def change
    create_table :infrastructures do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
