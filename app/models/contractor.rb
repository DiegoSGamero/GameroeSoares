class Contractor < ApplicationRecord
  has_many :contractor_properties, class_name: "Property", foreign_key: "contractor_id"
  has_many :adjoining_owners, through: :contractor_properties
end
