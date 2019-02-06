class CircuitDescription < ApplicationRecord
  belongs_to :station
  belongs_to :county
  belongs_to :equipment
end
