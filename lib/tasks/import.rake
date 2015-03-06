require 'csv'

task import_accidents: :environment do
  csv_text = File.open("#{Rails.root}/config/accidents.csv", "r:ISO-8859-1")
  csv = CSV.parse(csv_text.read, {:headers => true, :col_sep => ';', :encoding => 'ISO-8859-1'})
  csv.each do |row|
    Accident.create(
      organism_id: row['org'].to_i,
      light_id: row['lum'].to_i,
      agglomeration_id: row['agg'].to_i,
      intersection_id: row['int'].to_i,
      atmoshpere_id: row['atm'].to_i,
      collision_id: row['col'].to_i,
      city_id: row['com'].to_i,
      injured: row['tbl'].to_i + row['tbg'].to_i,
      killed: row['ttue'].to_i,
      minor_injured: row['tbl'].to_i,
      serious_injured: row['tbg'].to_i,
      uninjured: row['tindm'].to_i,
    )
  end
end
