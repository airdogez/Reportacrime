class CrimesController < ApplicationController
  
  before_filter :authenticate_user!
 
  before_action :set_crime, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    if params[:tag]
      @crimes= current_user.crimes.tagged_with(params[:tag])
    else
      @crimes= current_user.crimes.all
    end
    respond_with(@crimes)
  end
  
  def show
    respond_with(@crime)
  end

  def new
    @crime= Crime.new
    @crime.crime_images.build
    respond_with(@crime)
  end

  def edit
  end

  def create
    @crime = Crime.new(crime_params)
    @crime.user = current_user 
    @crime.status_id = 1
    @crime.active = true
    @crime.save
    respond_with(@crime)
  end

  def update
    @crime.update(crime_params)
    respond_with(@crime)
  end

  def destroy
    @crime.destroy
    respond_with(@crime)
  end

  private
    def set_crime
        @crime = Crime.find(params[:id])
    end

    def crime_params
      params.require(:crime).permit(:name, :description, :category_id, :user_id, :district_id, :details, :status_id, :crime_images, :tag_list, :latitude, :longitude,:address, :crime_images_attributes, :active)
    end
end
