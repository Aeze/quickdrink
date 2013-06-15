class IngredientsController < ApplicationController
    def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to drinks_path
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(ingredient_params)
    redirect_to drinks_path
  end

   def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
        redirect_to drinks_path

  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
