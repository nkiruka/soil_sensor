class Sensor < ApplicationRecord
  has_many :readings
  belongs_to  :plant
end
