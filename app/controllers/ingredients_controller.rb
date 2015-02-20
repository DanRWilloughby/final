class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find_by(id: params["id"])
  end

   def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient_params = params.require(:ingredient).permit!
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render text: "FAIL"
  end

  def edit
    @ingredient = Ingredient.find_by(id: params["id"])
  end

  def update
    ingredient_params = params.require(:ingredient).permit(:name, :price, :standard_price)
    @ingredient = Ingredient.find_by(id: params["id"])
    @ingredient.update(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params["id"])
    @ingredient.destroy
    redirect_to ingredients_path
  end
end
end