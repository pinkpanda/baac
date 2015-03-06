class Vehicule < ActiveRecord::Base
  belongs_to :accident
  belongs_to :car_category
  belongs_to :insurance
  belongs_to :membership
  belongs_to :assignment
end
