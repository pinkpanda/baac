class TrafficsController < ApplicationController
  before_action :set_traffic, only: [:show, :edit, :update, :destroy]

  # GET /traffics
  def index
    @traffics = Traffic.all
  end

  # GET /traffics/1
  def show
  end

  # GET /traffics/new
  def new
    @traffic = Traffic.new
  end

  # GET /traffics/1/edit
  def edit
  end

  # POST /traffics
  def create
    @traffic = Traffic.new(traffic_params)

    if @traffic.save
      redirect_to @traffic, notice: 'Traffic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /traffics/1
  def update
    if @traffic.update(traffic_params)
      redirect_to @traffic, notice: 'Traffic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /traffics/1
  def destroy
    @traffic.destroy
    redirect_to traffics_url, notice: 'Traffic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traffic
      @traffic = Traffic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def traffic_params
      params.require(:traffic).permit(:name)
    end
end
