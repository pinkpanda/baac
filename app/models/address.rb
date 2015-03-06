class Address < ActiveRecord::Base
  belongs_to :profile
  belongs_to :zone
  belongs_to :road_category
  belongs_to :plan
  belongs_to :infrastructure
  belongs_to :location
  belongs_to :traffic
  belongs_to :lane
end
