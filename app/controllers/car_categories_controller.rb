class CarCategoriesController < ApplicationController
  before_action :set_car_category, only: [:show, :edit, :update, :destroy]

  # GET /car_categories
  def index
    @car_categories = CarCategory.all
  end

  # GET /car_categories/1
  def show
  end

  # GET /car_categories/new
  def new
    @car_category = CarCategory.new
  end

  # GET /car_categories/1/edit
  def edit
  end

  # POST /car_categories
  def create
    @car_category = CarCategory.new(car_category_params)

    if @car_category.save
      redirect_to @car_category, notice: 'Car category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /car_categories/1
  def update
    if @car_category.update(car_category_params)
      redirect_to @car_category, notice: 'Car category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /car_categories/1
  def destroy
    @car_category.destroy
    redirect_to car_categories_url, notice: 'Car category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_category
      @car_category = CarCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_category_params
      params.require(:car_category).permit(:name)
    end
end
