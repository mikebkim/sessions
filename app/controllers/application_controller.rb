class ApplicationController < ActionController::Base
    private

    helper_method :current_student
    helper_method :current_teacher

    def current_student
        @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id]
    end

    def current_teacher
        @current_teacher ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
    end

    def authorize
        redirect_to login_path, alert: 'Not authorized student!' if current_student.nil? && current_teacher.nil?
    end

end 