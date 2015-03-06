class City < ActiveRecord::Base
  belongs_to :department

  has_many :accidents
end
