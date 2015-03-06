%w(Intersection Atmoshpere Collision Agglomeration Light CarCategory Insurance Assignment Membership Profile Zone RoadCategory Plan Infrastructure Location Traffic Lane).each do |model|
  plu = model.pluralize
  `rails g scaffold #{model} name:string`
  `rails g bootstrap:themed #{plu}`
end

references = %w(Profile Zone RoadCategory Plan Infrastructure Location Traffic Lane).map{ |model| model.underscore }.join(':references ') + ':references'
`rails g scaffold Address lane_name:string number_of_lanes:integer pr_number:integer pr_distance:float lane_number:integer lane_num_indice:integer lane_alphanum_indice:string latitude:float longitude:float #{references}`
`rails g bootstrap:themed Address`
