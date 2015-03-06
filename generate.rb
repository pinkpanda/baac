%w(Intersection Atmoshpere Collision Aglomeration Light CarCategory Insurance Assignment Membership Profile Zone RoadCategory Plan Infrastructure Location Traffic Lane).each do |model|
  plu = model.pluralize
  `rails g scaffold #{model} name:string`
  `rails g bootstrap:themed #{plu}`
end
