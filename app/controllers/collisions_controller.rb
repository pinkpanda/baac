class CollisionsController < ApplicationController
  before_action :set_collision, only: [:show, :edit, :update, :destroy]

  # GET /collisions
  def index
    @collisions = Collision.all
  end

  # GET /collisions/1
  def show
  end

  # GET /collisions/new
  def new
    @collision = Collision.new
  end

  # GET /collisions/1/edit
  def edit
  end

  # POST /collisions
  def create
    @collision = Collision.new(collision_params)

    if @collision.save
      redirect_to @collision, notice: 'Collision was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /collisions/1
  def update
    if @collision.update(collision_params)
      redirect_to @collision, notice: 'Collision was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /collisions/1
  def destroy
    @collision.destroy
    redirect_to collisions_url, notice: 'Collision was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collision
      @collision = Collision.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collision_params
      params.require(:collision).permit(:name)
    end
end
