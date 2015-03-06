class AgglomerationsController < ApplicationController
  before_action :set_agglomeration, only: [:show, :edit, :update, :destroy]

  # GET /agglomerations
  def index
    @agglomerations = Agglomeration.all
  end

  # GET /agglomerations/1
  def show
  end

  # GET /agglomerations/new
  def new
    @agglomeration = Agglomeration.new
  end

  # GET /agglomerations/1/edit
  def edit
  end

  # POST /agglomerations
  def create
    @agglomeration = Agglomeration.new(agglomeration_params)

    if @agglomeration.save
      redirect_to @agglomeration, notice: 'Agglomeration was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agglomerations/1
  def update
    if @agglomeration.update(agglomeration_params)
      redirect_to @agglomeration, notice: 'Agglomeration was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agglomerations/1
  def destroy
    @agglomeration.destroy
    redirect_to agglomerations_url, notice: 'Agglomeration was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agglomeration
      @agglomeration = Agglomeration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agglomeration_params
      params.require(:agglomeration).permit(:name)
    end
end
