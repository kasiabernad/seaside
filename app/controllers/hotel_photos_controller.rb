class HotelPhotosController < ApplicationController
  before_action :set_hotel_photo, only: [:show, :edit, :update, :destroy]

  # GET /hotel_photos
  # GET /hotel_photos.json
  def index
    @hotel_photos = HotelPhoto.all
  end

  # GET /hotel_photos/1
  # GET /hotel_photos/1.json
  def show
  end

  # GET /hotel_photos/new
  def new
    @hotel_photo = HotelPhoto.new
  end

  # GET /hotel_photos/1/edit
  def edit
  end

  # POST /hotel_photos
  # POST /hotel_photos.json
  def create
    @hotel_photo = HotelPhoto.new(hotel_photo_params)
    @hotel = @hotel_photo.hotel
    respond_to do |format|
      if @hotel_photo.save
        format.html { redirect_to @hotel, notice: 'Hotel photo was successfully created.' }
        format.json { render :show, status: :created, location: @hotel_photo }
      else
        format.html { render :new }
        format.json { render json: @hotel_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotel_photos/1
  # PATCH/PUT /hotel_photos/1.json
  def update
    respond_to do |format|
      if @hotel_photo.update(hotel_photo_params)
        format.html { redirect_to @hotel_photo, notice: 'Hotel photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel_photo }
      else
        format.html { render :edit }
        format.json { render json: @hotel_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_photos/1
  # DELETE /hotel_photos/1.json
  def destroy
    @hotel_photo.destroy
    respond_to do |format|
      format.html { redirect_to edit_hotel_path(@hotel_photo.hotel.id), notice: 'Hotel photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel_photo
      @hotel_photo = HotelPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_photo_params
      params.require(:hotel_photo).permit(:hotel_id, :picture)
    end
end
