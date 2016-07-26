class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
    # redirect_to pictures_path
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(params.require(:picture).permit!)
    if @picture.save
      redirect_to pictures_path
    else
      render :new_picture
    end
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.new(params[:picture].permit!)
    if @picture.save
      redirect_to pictures_path
    else
      render :editpicture
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
	    redirect_to pictures_path
    else
      render :editpicture
    end
  end

  private
    def set_picture
      @picture = Picture.find(params[:id])
    end

    def picture_params
      @pictures = Picture.all
    end
end

