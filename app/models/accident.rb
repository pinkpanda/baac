class Accident < ActiveRecord::Base
  belongs_to :agglomeration
  belongs_to :assignment
  belongs_to :atmoshpere
  belongs_to :car_category
  belongs_to :collision
  belongs_to :insurance
  belongs_to :intersection
  belongs_to :light
  belongs_to :membership
  belongs_to :city
  belongs_to :organism

  has_many :vehicules
end
