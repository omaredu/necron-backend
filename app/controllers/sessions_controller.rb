class SessionsController < ApplicationController
  def create
    @user = User.find_by(phone_number: user_params[:phone_number])

    if @user&.authenticate(user_params[:password])
      render json: { user: @user, token: @user.generate_token }
    else
      render json: { error: 'Invalid phone number or password' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:phone_number, :password)
  end
end
