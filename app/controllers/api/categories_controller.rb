module Api
  class CategoriesController < Api::BaseController

    private

    def categories_params 
      params.require(:categories).permit(:name, :description)
    end

    def query_params
      params.permit(:name)
    end

  end
end