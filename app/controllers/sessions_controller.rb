class SessionsController < ApplicationController
    def new
    end

    def create
        user = params[:login_type] == 'Student' ? Student.find_by(email: params[:email]) : Teacher.find_by(email: params[:email])
        session_key = params[:login_type] == 'Student' ? :student_id : :teacher_id
        if user && user.authenticate(params[:password])
            session[session_key] = user.id
            redirect_to student_form_students_path, notice: 'Logged in!'
        else
            flash.now.alert = 'Invalid login credentials - try again!'
            render :new
        end
    end

    def destroy_student
        session[:student_id] = nil
        redirect_to root_path, notice: "Logged out!"
    end

    def destroy_teacher
        session[:teacher_id] = nil
        redirect_to root_path, notice: "Logged out!"
    end


end