# Cocktail
class Cocktail < ApplicationRecord
  has_many :doses
  accepts_nested_attributes_for :doses, allow_destroy: true
  has_many :ingredients, through: :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end

