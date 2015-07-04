module Api::V1
  class DistrictsController < Api::V1::BaseController

    private

    def district_params 
      params.require(:district).permit(:name)
    end

    def query_params
      params.permit(:name)
    end

  end
end