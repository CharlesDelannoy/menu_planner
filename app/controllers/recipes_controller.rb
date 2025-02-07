class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe_ingredient = @recipe.recipe_ingredients.build
  end
end
