class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
  end
  end

   def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category )
   end
end
