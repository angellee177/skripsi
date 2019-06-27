class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_montir, :logged_in?
    def current_montir
        @current_montir ||= Montir.find(session[:montir_id]) if session[:montir_id]
    end
    
    def logged_in?
        !!current_montir
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You Must be Logged in to perform this action"
            redirect_to root_path
        end
    end
end
