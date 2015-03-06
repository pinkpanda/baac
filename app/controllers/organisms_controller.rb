class OrganismsController < ApplicationController
  before_action :set_organism, only: [:show, :edit, :update, :destroy]

  # GET /organisms
  def index
    @organisms = Organism.all
  end

  # GET /organisms/1
  def show
  end

  # GET /organisms/new
  def new
    @organism = Organism.new
  end

  # GET /organisms/1/edit
  def edit
  end

  # POST /organisms
  def create
    @organism = Organism.new(organism_params)

    if @organism.save
      redirect_to @organism, notice: 'Organism was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /organisms/1
  def update
    if @organism.update(organism_params)
      redirect_to @organism, notice: 'Organism was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /organisms/1
  def destroy
    @organism.destroy
    redirect_to organisms_url, notice: 'Organism was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organism
      @organism = Organism.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organism_params
      params.require(:organism).permit(:name)
    end
end
