class ProfileController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      format.html # index.html.haml

    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      format.js

    end
  end
end
