module Api
  class ReportsController < Api::BaseController

    private

    def reports_params
      params.require(:report).permit(:name, :description, :category, :district, :details, :status, :address, :latitude, :longitude)
    end

    def query_params
      params.permit(:name, :description, :category_id, :district_id, :details, :status_id, :address, :latitude, :longitude, :user_id)
    end

  end
end
