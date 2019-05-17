class BillboardsController < ApplicationController
  def index
    @billboard = Billboards.all
  end

  def show
  end

  def new
    @billboard = Billboards.new
  end

  def create 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
