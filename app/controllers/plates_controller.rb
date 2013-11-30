class PlatesController < ApplicationController
  # GET /plates
  # GET /plates.json
  def index
    @plates = Plate.all
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plates }
      format.js
    end
  end

  # GET /plates/1
  # GET /plates/1.json
  def show
    @plate = Plate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plate }
      format.js
    end
  end

  # GET /plates/new
  # GET /plates/new.json
  def new
    @plate = Plate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plate }
    end
  end

  # GET /plates/1/edit
  def edit
    @plate = Plate.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      format.html
      format.json { render json: @plate }
      format.js
    end
  end

  # POST /plates
  # POST /plates.json
  def create
    #@plate = Plate.new(params[:plate])
    @restaurant = Restaurant.find(params[:restaurant_name])

    @plate = @restaurant.plates.create!(params[:plate])
    @plate.restaurant_name = @restaurant.name

    respond_to do |format|
      if @plate.save
        format.html { redirect_to @plate, notice: 'Plate was successfully created.' }
        format.json { render json: @plate, status: :created, location: @plate }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plates/1
  # PUT /plates/1.json
  def update
    @plate = Plate.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      if @plate.update_attributes(params[:plate])
        format.html { redirect_to @plate, notice: 'Plate was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @plate.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /plates/1
  # DELETE /plates/1.json
  def destroy
    @plate = Plate.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant])
    @plate.destroy

    respond_to do |format|
      format.html { redirect_to plates_url }
      format.json { head :no_content }
      format.js
    end
  end

  def confirm_delete
    @plate = Plate.find(params[:plate_id])
    @restaurant = Restaurant.find(params[:restaurant])
    respond_to do |format|
      format.js
    end
  end

end
