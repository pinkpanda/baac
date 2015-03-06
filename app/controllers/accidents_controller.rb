class AccidentsController < ApplicationController
  before_action :set_accident, only: [:show, :edit, :update, :destroy]

  # GET /accidents
  def index
    @accidents = Accident.all
  end

  # GET /accidents/1
  def show
  end

  # GET /accidents/new
  def new
    @accident = Accident.new
  end

  # GET /accidents/1/edit
  def edit
  end

  # POST /accidents
  def create
    @accident = Accident.new(accident_params)

    if @accident.save
      redirect_to @accident, notice: 'Accident was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /accidents/1
  def update
    if @accident.update(accident_params)
      redirect_to @accident, notice: 'Accident was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /accidents/1
  def destroy
    @accident.destroy
    redirect_to accidents_url, notice: 'Accident was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accident
      @accident = Accident.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def accident_params
      params.require(:accident).permit(:killed, :injured, :serious_injured, :minor_injured, :uninjured, :address, :severity, :intersection_id, :atmoshpere_id, :collision_id, :agglomeration_id, :light_id, :car_category_id, :insurance_id, :assignment_id, :membership_id)
    end
end
