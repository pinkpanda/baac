class AglomerationsController < ApplicationController
  before_action :set_aglomeration, only: [:show, :edit, :update, :destroy]

  # GET /aglomerations
  def index
    @aglomerations = Aglomeration.all
  end

  # GET /aglomerations/1
  def show
  end

  # GET /aglomerations/new
  def new
    @aglomeration = Aglomeration.new
  end

  # GET /aglomerations/1/edit
  def edit
  end

  # POST /aglomerations
  def create
    @aglomeration = Aglomeration.new(aglomeration_params)

    if @aglomeration.save
      redirect_to @aglomeration, notice: 'Aglomeration was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /aglomerations/1
  def update
    if @aglomeration.update(aglomeration_params)
      redirect_to @aglomeration, notice: 'Aglomeration was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /aglomerations/1
  def destroy
    @aglomeration.destroy
    redirect_to aglomerations_url, notice: 'Aglomeration was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aglomeration
      @aglomeration = Aglomeration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aglomeration_params
      params.require(:aglomeration).permit(:name)
    end
end
