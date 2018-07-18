class TeachersController < ApplicationController
   
    def index
        if !params[:instrument].blank?
            @teachers = Teacher.where(instrument: params[:instrument].capitalize)
        end
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def new
        @teacher = Teacher.new
    end

    def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.save
            session[:teacher_id] = @teacher.id
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def teacher_params
        params.require(:teacher).permit(:name, :phone, :address, :address_2, :city, :state, :zipcode, :email, :password, :password_confirmation, :instrument)
    end

end