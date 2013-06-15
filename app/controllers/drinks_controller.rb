class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.new(drink_params)
    @drink.save
    redirect_to drinks_path
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.update_attributes(drink_params)
    redirect_to drinks_path
  end

  def random
    drinks = Drink.all
    @drink = drinks[rand(drinks.length)]
  end

  def drink_params
    params.require(:drink).permit(:name, :ingredient_ids => [])
  end

end
