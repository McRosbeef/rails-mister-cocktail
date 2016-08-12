class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, presence: true
  validates :ingredient, presence: true

  validates :ingredient, uniqueness: { scope: :cocktail, message: "this cocktail already has a dose with this ingredient" }

  validates :description, presence: true
end
