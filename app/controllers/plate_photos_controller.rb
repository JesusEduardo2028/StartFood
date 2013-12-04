class PlatePhotosController < ApplicationController
  # GET /plate_photos
  # GET /plate_photos.json
  def index
    @plate_photos = PlatePhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plate_photos }
    end
  end

  # GET /plate_photos/1
  # GET /plate_photos/1.json
  def show
    @plate_photo = PlatePhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plate_photo }
    end
  end

  # GET /plate_photos/new
  # GET /plate_photos/new.json
  def new
    @plate_photo = PlatePhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plate_photo }
    end
  end

  # GET /plate_photos/1/edit
  def edit
    @plate_photo = PlatePhoto.find(params[:id])
  end

  # POST /plate_photos
  # POST /plate_photos.json
  def create
    @plate_photo = PlatePhoto.new(params[:plate_photo])

    respond_to do |format|
      if @plate_photo.save
        format.html { redirect_to @plate_photo, notice: 'Plate photo was successfully created.' }
        format.json { render json: @plate_photo, status: :created, location: @plate_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @plate_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plate_photos/1
  # PUT /plate_photos/1.json
  def update
    @plate_photo = PlatePhoto.find(params[:id])

    respond_to do |format|
      if @plate_photo.update_attributes(params[:plate_photo])
        format.html { redirect_to @plate_photo, notice: 'Plate photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plate_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plate_photos/1
  # DELETE /plate_photos/1.json
  def destroy
    @plate_photo = PlatePhoto.find(params[:id])
    @plate_photo.destroy

    respond_to do |format|
      format.html { redirect_to plate_photos_url }
      format.json { head :no_content }
    end
  end
end
