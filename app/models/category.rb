class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, Maximum: 25 }
  validates_uniqueness_of :name
end 