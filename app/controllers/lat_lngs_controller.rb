class LatLngsController < ApplicationController
  before_action :set_lat_lng, only: [:show, :edit, :update, :destroy]

  # GET /lat_lngs
  # GET /lat_lngs.json
  def index
    @lat_lngs = LatLng.all
  end

  # GET /lat_lngs/1
  # GET /lat_lngs/1.json
  def show
  end

  # GET /lat_lngs/new
  def new
    @lat_lng = LatLng.new
  end
  
	def login 
	  @lat_lng = LatLng.new
	end
	
	def form
	  @lat_lng = LatLng.new
	end

	def index
		#@lat_lng = LatLng.new
	end
	
  # GET /lat_lngs/1/edit
  def edit
  end

  # POST /lat_lngs
  # POST /lat_lngs.json
  def create
    @lat_lng = LatLng.new(lat_lng_params)

    respond_to do |format|
      if @lat_lng.save
        format.html { redirect_to @lat_lng, notice: 'Lat lng was successfully created.' }
        format.json { render :show, status: :created, location: @lat_lng }
      else
        format.html { render :new }
        format.json { render json: @lat_lng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lat_lngs/1
  # PATCH/PUT /lat_lngs/1.json
  def update
    respond_to do |format|
      if @lat_lng.update(lat_lng_params)
        format.html { redirect_to @lat_lng, notice: 'Lat lng was successfully updated.' }
        format.json { render :show, status: :ok, location: @lat_lng }
      else
        format.html { render :edit }
        format.json { render json: @lat_lng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lat_lngs/1
  # DELETE /lat_lngs/1.json
  def destroy
    @lat_lng.destroy
    respond_to do |format|
      format.html { redirect_to lat_lngs_url, notice: 'Lat lng was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lat_lng
      @lat_lng = LatLng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lat_lng_params
      params.require(:lat_lng).permit(:lat, :lng)
    end
end
