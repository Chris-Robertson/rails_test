class MenuController < ApplicationController
  def index
    @drinks = Item.drink
    @food = Item.food
  end
end
