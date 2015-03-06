class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :libelle
      t.string :code_insee

      t.timestamps null: false
    end
  end
end
