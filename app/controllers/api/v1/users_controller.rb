#To delete
module Api::V1
  class UsersController < Api::V1::BaseController
    private

    def user_params
      params.require(:user).permit(:name, :lastname, :email, :address, :phone, :authentication_token, :district)
    end

    def query_params
      params.permit(:name, :lastname, :email, :district_id, :token)
    end

  end
end
