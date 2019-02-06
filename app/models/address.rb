class Address < ApplicationRecord

    belongs_to :company
    belongs_to :state
    belongs_to :county

  validates :stree, length: {maximum: 250}, presence: true
  validates :city, length: {maximum: 50}, presence: true
  validates :state, presence: true, length: {maximum: 2}
  validates :zipcode, length: {maximum: 9}

end