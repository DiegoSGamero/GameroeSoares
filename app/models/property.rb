class Property < ApplicationRecord
  belongs_to :contractor, class_name: "Contractor"
  has_and_belongs_to_many :adjoining_owners
end
