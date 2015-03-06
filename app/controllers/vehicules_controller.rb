class VehiculesController < ApplicationController
  before_action :set_vehicule, only: [:show, :edit, :update, :destroy]

  # GET /vehicules
  def index
    @vehicules = Vehicule.all
  end

  # GET /vehicules/1
  def show
  end

  # GET /vehicules/new
  def new
    @vehicule = Vehicule.new
  end

  # GET /vehicules/1/edit
  def edit
  end

  # POST /vehicules
  def create
    @vehicule = Vehicule.new(vehicule_params)

    if @vehicule.save
      redirect_to @vehicule, notice: 'Vehicule was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicules/1
  def update
    if @vehicule.update(vehicule_params)
      redirect_to @vehicule, notice: 'Vehicule was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vehicules/1
  def destroy
    @vehicule.destroy
    redirect_to vehicules_url, notice: 'Vehicule was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicule
      @vehicule = Vehicule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicule_params
      params.require(:vehicule).permit(:killed, :serious_injured, :minor_injured, :uninjured, :released, :accident_id, :car_category_id, :insurance_id, :membership_id, :assignment_id)
    end
end
