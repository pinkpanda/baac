class IntersectionsController < ApplicationController
  before_action :set_intersection, only: [:show, :edit, :update, :destroy]

  # GET /intersections
  def index
    @intersections = Intersection.all
  end

  # GET /intersections/1
  def show
  end

  # GET /intersections/new
  def new
    @intersection = Intersection.new
  end

  # GET /intersections/1/edit
  def edit
  end

  # POST /intersections
  def create
    @intersection = Intersection.new(intersection_params)

    if @intersection.save
      redirect_to @intersection, notice: 'Intersection was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /intersections/1
  def update
    if @intersection.update(intersection_params)
      redirect_to @intersection, notice: 'Intersection was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /intersections/1
  def destroy
    @intersection.destroy
    redirect_to intersections_url, notice: 'Intersection was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intersection
      @intersection = Intersection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def intersection_params
      params.require(:intersection).permit(:name)
    end
end
