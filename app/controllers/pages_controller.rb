class PagesController < ApplicationController
  def home
    @drinks = Drink.all
  end
end
