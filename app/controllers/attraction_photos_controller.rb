class AttractionPhotosController < ApplicationController
  before_action :set_attraction_photo, only: [:show, :edit, :update, :destroy]

  # GET /attraction_photos
  # GET /attraction_photos.json
  def index
    @attraction_photos = AttractionPhoto.all
  end

  # GET /attraction_photos/1
  # GET /attraction_photos/1.json
  def show
  end

  # GET /attraction_photos/new
  def new
    @attraction_photo = AttractionPhoto.new
  end

  # GET /attraction_photos/1/edit
  def edit
  end

  # POST /attraction_photos
  # POST /attraction_photos.json
  def create
    @attraction_photo = AttractionPhoto.new(attraction_photo_params)
    @attraction = @attraction_photo.attraction
    respond_to do |format|
      if @attraction_photo.save
        format.html { redirect_to @attraction, notice: 'Attraction photo was successfully created.' }
        format.json { render :show, status: :created, location: @attraction_photo }
      else
        format.html { render :new }
        format.json { render json: @attraction_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attraction_photos/1
  # PATCH/PUT /attraction_photos/1.json
  def update
    respond_to do |format|
      if @attraction_photo.update(attraction_photo_params)
        format.html { redirect_to @attraction_photo, notice: 'Attraction photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @attraction_photo }
      else
        format.html { render :edit }
        format.json { render json: @attraction_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attraction_photos/1
  # DELETE /attraction_photos/1.json
  def destroy
    @attraction_photo.destroy
    respond_to do |format|
      format.html { redirect_to attraction_photos_url, notice: 'Attraction photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction_photo
      @attraction_photo = AttractionPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attraction_photo_params
      params.require(:attraction_photo).permit(:attraction_id, :picture)
    end
end
