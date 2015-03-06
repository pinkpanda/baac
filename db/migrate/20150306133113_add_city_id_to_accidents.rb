class AddCityIdToAccidents < ActiveRecord::Migration
  def change
    add_column :accidents, :city_id, :integer
  end
end
