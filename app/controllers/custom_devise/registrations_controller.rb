class CustomDevise::RegistrationsController < Devise::RegistrationsController
  def sign_up_params
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :username, :password) }
     super
  end

  private
    def user_params
      params.require(:user).permit(:email, :username, :password)
    end
end