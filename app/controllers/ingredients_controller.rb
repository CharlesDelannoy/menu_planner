class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      @ingredients = Ingredient.all
      render :index
    end
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :category)
  end
end
