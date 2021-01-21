class Dose < ApplicationRecord
  belongs_to :cocktail, foreign_key: "cocktail_id"
  belongs_to :ingredient, foreign_key: "ingredient_id"

  validates :description, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient,
  message: "should be only one combination" }
end
