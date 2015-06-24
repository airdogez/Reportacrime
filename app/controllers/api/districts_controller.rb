module Api
  class DistrictsController < Api::BaseController

    private

    def districts_params 
      params.require(:district).permit(:name)
    end

    def query_params
      params.permit(:name)
    end

  end
end