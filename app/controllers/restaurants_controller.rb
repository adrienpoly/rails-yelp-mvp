class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  # before_action :authorize, only: [:edit, :new, :update, :create, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  # def search
  #   # @restaurants = restaurant.last(2)
  #   @restaurants = restaurant.where("articles.title or articles.content LIKE ?", "%#{params[:q]}%")

  #   render :index
  # end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "restaurant succesfully added"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "invalid restaurant"
      render :new
    end

  end

  # def edit
  # end

  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
