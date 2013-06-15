class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def random
    drinks = Drink.all
    @drink = drinks[rand(drinks.length)]
  end
end
