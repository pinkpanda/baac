class CreateAgglomerations < ActiveRecord::Migration
  def change
    create_table :agglomerations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
