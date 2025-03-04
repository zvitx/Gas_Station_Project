class Pump < ApplicationRecord
  belongs_to :gas_station
  validates_presence_of :fuel_type, :capacity
end
