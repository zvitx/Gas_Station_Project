class GasStation < ApplicationRecord
    validates_presence_of :name, :address
    has_many :pumps
end
