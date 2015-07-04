module Api::V1
  class StatusesController < Api::V1::BaseController
    private

    def status_params 
      params.require(:district).permit(:name)
    end

    def query_params
      params.permit(:name)
    end

  end
end