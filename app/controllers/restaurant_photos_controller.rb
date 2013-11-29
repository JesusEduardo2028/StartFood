class RestaurantPhotosController < ApplicationController
  # GET /restaurant_photos
  # GET /restaurant_photos.json
  def index
    @restaurant_photos = RestaurantPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_photos }
    end
  end

  # GET /restaurant_photos/1
  # GET /restaurant_photos/1.json
  def show
    @restaurant_photo = RestaurantPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_photo }
    end
  end

  # GET /restaurant_photos/new
  # GET /restaurant_photos/new.json
  def new
    @restaurant_photo = RestaurantPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_photo }
    end
  end

  # GET /restaurant_photos/1/edit
  def edit
    @restaurant_photo = RestaurantPhoto.find(params[:id])
  end

  # POST /restaurant_photos
  # POST /restaurant_photos.json
  def create
    @restaurant = Restaurant.find(params[:restaurant])
    @restaurant_photo = @restaurant.restaurant_photos.create!(params[:restaurant_photo])
    @restaurant_photo.restaurant_name = params[:restaurant]

    if @restaurant_photo.image?
      flash[:notice] ="Foto subida satisfactoriamente"
      respond_to do |format|
        if @restaurant_photo.save
          format.js
          format.html{redirect_to restaurant_profile_path(:restaurant =>@restaurant.name)}
        end
      end


    else
      @restaurant_photo.destroy
      respond_to do |format|
        format.js{render "restaurant_photos/error_uploading"}
      end

    end
  end


  # PUT /restaurant_photos/1
  # PUT /restaurant_photos/1.json
  def update
    @restaurant_photo = RestaurantPhoto.find(params[:id])

    respond_to do |format|
      if @restaurant_photo.update_attributes(params[:restaurant_photo])
        format.html { redirect_to @restaurant_photo, notice: 'Restaurant photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_photos/1
  # DELETE /restaurant_photos/1.json
  def destroy
    @restaurant_photo = RestaurantPhoto.find(params[:id])
    @restaurant_photo.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_photos_url }
      format.json { head :no_content }
    end
  end
end
