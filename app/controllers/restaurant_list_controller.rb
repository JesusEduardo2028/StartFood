class RestaurantListController < ApplicationController

  before_filter :authenticate_user!

  def create

  end

  def show

    respond_to do |format|
      format.html # index.html.haml

    end
  end
end
