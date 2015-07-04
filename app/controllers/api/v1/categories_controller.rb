module Api
  class CategoriesController < Api::BaseController

    private

    def category_params 
      params.require(:categories).permit(:name, :description)
    end

    def query_params
      params.permit(:name)
    end

  end
end