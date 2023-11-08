class AdjoiningOwner < ApplicationRecord
  has_and_belongs_to_many :properties
  has_many :properties_contractors, through: :properties, source: :contractor
end
