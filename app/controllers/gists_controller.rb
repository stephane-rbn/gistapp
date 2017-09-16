# Defines gist actions
class GistsController < ApplicationController
  # Find gist by id before doing any of these actions
  before_action :find_gist, only: %i[show edit update destroy]

  def index
    if params[:category].blank?
      # if none category is selected,displays all gists in descending order
      @gists = Gist.all.order('created_at DESC')
    else
      # otherwise find the category id and loop through the gists with this category id
      @category_id = Category.find_by(name: params[:category]).id
      @gists = Gist.where(category_id: @category_id).order("created_at DESC")
    end
  end

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

  def update
    if @gist.update(gists_params)
      redirect_to @gist
    else
      render 'Edit'
    end
  end

  def destroy
    @gist.destroy
    redirect_to root_path
  end

  private

  def gists_params
    # Parameters we need to create and update a gist
    params.require(:gist).permit(:filename, :description, :code, :category_id)
  end

  def find_gist
    # Method that finds gist by id at the top of the show, edit, update and destroy methods
    @gist = Gist.find(params[:id])
  end
end
