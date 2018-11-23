# Dose
class Dose < ApplicationRecord
  belongs_to :cocktail
  validates_presence_of :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_presence_of :cocktail
  validates :ingredient_id, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
