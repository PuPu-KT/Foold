class PagesController < ApplicationController

  def about_us
  end

  def contact_us
  end

  def japanese
    @japanese_restaurants = Restaurant.where(category_id: 2)
  end

  def korean
    @korean_restaurants = Restaurant.where(category_id: 5)
  end

  def muslim
    @muslim_restaurants = Restaurant.where(category_id: 4)
  end

end
