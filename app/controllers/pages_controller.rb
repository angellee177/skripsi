class PagesController < ApplicationController
    def index
        redirect_to pelanggans_path if logged_in?
    end
end