module Api
  class StatusesController < Api::BaseController

    private

    def statuses_params 
      params.require(:status).permit(:name)
    end

    def query_params
      params.permit(:name)
    end

  end
end