class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :title, presence: true

  accepts_nested_attributes_for :recipe_ingredients
end
