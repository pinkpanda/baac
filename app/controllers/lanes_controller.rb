class LanesController < ApplicationController
  before_action :set_lane, only: [:show, :edit, :update, :destroy]

  # GET /lanes
  def index
    @lanes = Lane.all
  end

  # GET /lanes/1
  def show
  end

  # GET /lanes/new
  def new
    @lane = Lane.new
  end

  # GET /lanes/1/edit
  def edit
  end

  # POST /lanes
  def create
    @lane = Lane.new(lane_params)

    if @lane.save
      redirect_to @lane, notice: 'Lane was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lanes/1
  def update
    if @lane.update(lane_params)
      redirect_to @lane, notice: 'Lane was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lanes/1
  def destroy
    @lane.destroy
    redirect_to lanes_url, notice: 'Lane was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lane
      @lane = Lane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lane_params
      params.require(:lane).permit(:name)
    end
end
