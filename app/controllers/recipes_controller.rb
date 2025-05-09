class RecipesController < ApplicationController

  before_action :fetch_recipe, only: [:edit, :update, :show]
  def index
    @recipes = policy_scope(Recipe.all)
  end
  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build.build_ingredient
    authorize @recipe
    # @recipe_ingredient = @recipe.recipe_ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    # @recipe_ingredients = @recipe.recipe_ingredients
    # @new_recipe_ingredient = RecipeIngredient.new(recipe: @recipe)
    @recipe.recipe_ingredients.build.build_ingredient
  end

  def show
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :duration, :shares, recipe_ingredients_attributes: [:id, :ingredient_id, :quantity, :unit])
  end

  def fetch_recipe
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end
end
