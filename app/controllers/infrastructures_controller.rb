class InfrastructuresController < ApplicationController
  before_action :set_infrastructure, only: [:show, :edit, :update, :destroy]

  # GET /infrastructures
  def index
    @infrastructures = Infrastructure.all
  end

  # GET /infrastructures/1
  def show
  end

  # GET /infrastructures/new
  def new
    @infrastructure = Infrastructure.new
  end

  # GET /infrastructures/1/edit
  def edit
  end

  # POST /infrastructures
  def create
    @infrastructure = Infrastructure.new(infrastructure_params)

    if @infrastructure.save
      redirect_to @infrastructure, notice: 'Infrastructure was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /infrastructures/1
  def update
    if @infrastructure.update(infrastructure_params)
      redirect_to @infrastructure, notice: 'Infrastructure was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /infrastructures/1
  def destroy
    @infrastructure.destroy
    redirect_to infrastructures_url, notice: 'Infrastructure was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infrastructure
      @infrastructure = Infrastructure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def infrastructure_params
      params.require(:infrastructure).permit(:name)
    end
end
