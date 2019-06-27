class SessionsController < ApplicationController
    def new
    end

    def create
        montir = Montir.find_by(email: params[:session][:email].downcase)
        if montir && montir.authenticate(params[:session][:password])
            session[:montir_id] = montir.id
            flash[:success] = "You have been Successfully login"
            redirect_to montir
        else
            flash.now[:danger] = "There is something wrong with Your Login Information"
            render 'new'
        end
    end

    def destroy
        session[:montir_id] = nil
        flash[:success] = "You have logged out"
        redirect_to root_path
    end
end