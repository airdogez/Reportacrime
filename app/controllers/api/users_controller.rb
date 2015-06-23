module Api
  class UsersController < Api::BaseController

    private

    def users_params
      params.require(:user).permit(:name, :lastname, :email, :address, :phone, :district)
    end

    def query_params
      params.permit(:name, :lastname, :email, :address, :phone, :district_id)
    end

  end
end
