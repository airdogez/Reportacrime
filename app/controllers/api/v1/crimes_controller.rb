module Api::V1
  class CrimesController < Api::V1::BaseController

    private

    def crime_params
      params.require(:crime).permit(:name, :description, :category_id, :district_id, :status_id, :details, :address, :user_id, :latitude, :longitude)
    end

    def query_params
      params.permit(:name, :description, :category_id, :district_id, :details, :status_id, :address, :latitude, :longitude, :user_id)
    end

  end
end
