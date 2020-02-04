class MontirsController < ApplicationController
    before_action :set_montir, only: [:show, :edit, :update, :destroy]
    def index
        @montirs = Montir.all
    end
    
    def new
        @montir = Montir.new
    end

    def create
        @montir = Montir.new(montir_params)
        if @montir.save
            session[:montir_id] = @montir.id
            flash[:success] = "Welcome #{@montir.name} to Garage Web" 
            redirect_to montir_path(@montir)
        else
            render 'new'
        end
    end

    def show
        @montir_sales = @montir.sales.all.to_a
        @montir_sale_months = @montir_sales.group_by {|t| t.created_at.beginning_of_month};
        @montir_subtotals = @montir.sales.group_by_month(:created_at).sum(:commission)
        @montir_subtotal = @montir.subtotals
        @montir_gaji = @montir.gaji_all 
    end    

    def edit

    end

    def update
        if @montir.update(montir_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to @montir
          else
            render 'edit'
          end  
    end

    def destroy
        @montir.destroy
        flash[:danger] = "Montir account and all associated pelanggans have been deleted"
        redirect_to montirs_path
    end

    private
    def set_montir
        @montir = Montir.find(params[:id])
    end

    def montir_params
        params.require(:montir).permit(:name, :username, :email, :tanggal_lahir, 
            :picture, :password, :password_confirmation, :bonus, :potongan, 
            :sale_id)
    end

end