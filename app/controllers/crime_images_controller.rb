class CrimeImagesController < ApplicationController
    private 
    def set_crime
      @crime = Crime.find(params[:id])
    end

    def crime_params
      params.require(:crime_image).permit(:description, :photo, :crime_images_attributes)
    end
end
