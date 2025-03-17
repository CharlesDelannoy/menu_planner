class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build.build_ingredient
    # @recipe_ingredient = @recipe.recipe_ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :duration, :shares, recipe_ingredients_attributes: [:id, :ingredient_id, :quantity])
  end
end
