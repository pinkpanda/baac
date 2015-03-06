class LightsController < ApplicationController
  before_action :set_light, only: [:show, :edit, :update, :destroy]

  # GET /lights
  def index
    @lights = Light.all
  end

  # GET /lights/1
  def show
  end

  # GET /lights/new
  def new
    @light = Light.new
  end

  # GET /lights/1/edit
  def edit
  end

  # POST /lights
  def create
    @light = Light.new(light_params)

    if @light.save
      redirect_to @light, notice: 'Light was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lights/1
  def update
    if @light.update(light_params)
      redirect_to @light, notice: 'Light was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lights/1
  def destroy
    @light.destroy
    redirect_to lights_url, notice: 'Light was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_light
      @light = Light.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def light_params
      params.require(:light).permit(:name)
    end
end
