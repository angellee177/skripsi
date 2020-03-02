class ForgotPasswordController < ApplicationController
    def new
    end
  
    def create
      montir = Montir.find_by(email: params[:email])
      if montir
        montir.update_with_token!
        AppMailer.send_forgot_password(montir).deliver
        redirect_to forgot_password_confirmation_path
      else
        flash[:error] = params[:email].blank? ? "Email cannot be blank." : "There is no user this email address in the system."
        redirect_to forgot_passwords_path
      end
    end
end
