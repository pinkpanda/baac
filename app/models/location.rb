class Location < ActiveRecord::Base
  has_many :addresses
end
