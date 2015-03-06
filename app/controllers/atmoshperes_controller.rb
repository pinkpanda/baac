class AtmoshperesController < ApplicationController
  before_action :set_atmoshpere, only: [:show, :edit, :update, :destroy]

  # GET /atmoshperes
  def index
    @atmoshperes = Atmoshpere.all
  end

  # GET /atmoshperes/1
  def show
  end

  # GET /atmoshperes/new
  def new
    @atmoshpere = Atmoshpere.new
  end

  # GET /atmoshperes/1/edit
  def edit
  end

  # POST /atmoshperes
  def create
    @atmoshpere = Atmoshpere.new(atmoshpere_params)

    if @atmoshpere.save
      redirect_to @atmoshpere, notice: 'Atmoshpere was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /atmoshperes/1
  def update
    if @atmoshpere.update(atmoshpere_params)
      redirect_to @atmoshpere, notice: 'Atmoshpere was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /atmoshperes/1
  def destroy
    @atmoshpere.destroy
    redirect_to atmoshperes_url, notice: 'Atmoshpere was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atmoshpere
      @atmoshpere = Atmoshpere.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def atmoshpere_params
      params.require(:atmoshpere).permit(:name)
    end
end
