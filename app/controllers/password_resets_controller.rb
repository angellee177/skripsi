class PasswordResetsController < ApplicationController
    def show
        montir = Montir.find_by(auth_token: params[:id])
        if montir
            @token = montir.auth_token
        else
            redirect_to expired_token_path unless montir
        end
    end

    def create
        montir = Montir.find_by(auth_token: params[:auth_token])
        if montir && montir.update(password: params[:password], auth_token: nil)
            flash[:success] = "Your password has been changed. Please sign in."
            redirect_to login_path
        elsif user
            @token = montir.auth_token
            render :show
        else
            redirect_to expired_token_path
        end
    end
end
