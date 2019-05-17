class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:edit, :show, :destroy, :update]

  def index
    @billboard = Billboards.all
  end

  def show
  end

  def new
    @billboard = Billboards.new
  end

  def create 
    @billboard = Billboards.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @billboard.update(billboard_params)
      redirect_to @billboard
    else
      render :edit
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])

  def billboard_params
    params.require(:billboard).permit(:title)
  end
end
