class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :libelle
      t.string :code_insee
      t.belongs_to :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :cities, :departments
  end
end
