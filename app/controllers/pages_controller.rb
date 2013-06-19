class PagesController < ApplicationController
  def home
    drinks = Drink.all
    @drink = drinks[rand(drinks.length)]
  end
end
