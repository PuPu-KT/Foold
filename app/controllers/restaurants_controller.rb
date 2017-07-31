class RestaurantsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new]
    before_action :is_admin?, only: [:edit, :update, :destroy]

  def index
    #visitor_latitude = request.location.latitude
    #visitor_longitude = request.location.longitude
    # above is actual geo location used in production to grab users location by IP address. Can't use here in host3000.
    # below is hard-coded geo location base on Khatib LAT/LOG.
    visitor_latitude = 1.4304
    visitor_longitude = 103.8354


    @restaurants = Restaurant.near([visitor_latitude, visitor_longitude], 20)
    @japanese_restaurants = Restaurant.where(category_id: 2).near([visitor_latitude, visitor_longitude], 20)
    @korean_restaurants = Restaurant.where(category_id: 5).near([visitor_latitude, visitor_longitude], 20)
    @muslim_restaurants = Restaurant.where(category_id: 4).near([visitor_latitude, visitor_longitude], 20)
  end

  def new
    @restaurant = Restaurant.new
  end

 def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
     flash[:danger] = @restaurant.errors.full_messages.to_sentence
     render 'new'
   end
 end

def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant)
    if @reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
  end

  def search
    if params[:category].blank?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.search(params)
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      redirect_to '/'
  end

    private
      def restaurant_params
        params.require(:restaurant).permit(:name, :description, :address1, :address2, :category_id,
                                           :city, :state, :zipcode, :phone, :image, :email)
      end

      def is_admin?
         if !current_user.try(:admin?)
           flash[:danger] = "Oops! Did you try to access a secret page?"
           redirect_to '/'
         end
      end
end
