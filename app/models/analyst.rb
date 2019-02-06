class Analyst < ApplicationRecord

  belongs_to :regional

  validates :name, length: {maximum: 50}, presence: true
  validates :email, length: {maximum: 50}, presence: true, uniqueness: true
  validates :role, presence: true

end

