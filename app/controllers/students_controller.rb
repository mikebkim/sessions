class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(user_params)
            if @student.save
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path
            else
            render :new
        end
    end

    private

    def student_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
