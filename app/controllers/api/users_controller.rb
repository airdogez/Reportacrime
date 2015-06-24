module Api
  class UsersController < Api::BaseController

    private

    def users_params
      params.require(:user).permit(:name, :lastname, :email, :address, :phone, :token, :district_id)
    end

    def query_params
      params.permit(:name, :lastname, :email, :district_id, :token)
    end

  end
end
