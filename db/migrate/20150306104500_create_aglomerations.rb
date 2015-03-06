class CreateAglomerations < ActiveRecord::Migration
  def change
    create_table :aglomerations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
