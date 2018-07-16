class TeachersController < ApplicationController
   
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
        params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
    end

end