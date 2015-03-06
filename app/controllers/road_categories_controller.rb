class RoadCategoriesController < ApplicationController
  before_action :set_road_category, only: [:show, :edit, :update, :destroy]

  # GET /road_categories
  def index
    @road_categories = RoadCategory.all
  end

  # GET /road_categories/1
  def show
  end

  # GET /road_categories/new
  def new
    @road_category = RoadCategory.new
  end

  # GET /road_categories/1/edit
  def edit
  end

  # POST /road_categories
  def create
    @road_category = RoadCategory.new(road_category_params)

    if @road_category.save
      redirect_to @road_category, notice: 'Road category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_categories/1
  def update
    if @road_category.update(road_category_params)
      redirect_to @road_category, notice: 'Road category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_categories/1
  def destroy
    @road_category.destroy
    redirect_to road_categories_url, notice: 'Road category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_category
      @road_category = RoadCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_category_params
      params.require(:road_category).permit(:name)
    end
end
