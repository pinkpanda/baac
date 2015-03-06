class AddOrganismIdToAccidents < ActiveRecord::Migration
  def change
    add_column :accidents, :organism_id, :integer
  end
end
