class StudentsController < ApplicationController
   
    def index
        @subjects = Subject.all
    end

    def new
        @student = Student.new
    end

    def student_form
        instrument = params[:instrument]
        redirect_to teachers_path + "?instrument=#{instrument.downcase!}"
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            flash[:notice] = "You have successfully signed up!"
            redirect_to students_path
        else
            render :new
        end
    end

    private

    def student_params
        params.require(:student).permit(:name, :email, :password, :password_confirmation)
    end

end
