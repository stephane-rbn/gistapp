class GistsController < ApplicationController
  before_action :find_gist, only: %i[show edit update destroy]

  def index; end

  def show; end

  def new
    @gist = Gist.new
  end

  def create
    @gist = Gist.new(gists_params)

    if @gist.save
      redirect_to @gist
    else
      render 'New'
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def gists_params
    params.require(:gist).permit(:filename, :description, :code)
  end

  def find_gist
    @gist = Gist.find(params[:id])
  end
end
