class AppointmentsController < ApplicationController

    def index
        if current_student
            @lessons = current_student.lessons
        end

        if current_teacher
            # @lessons = current_teacher.lessons
            lessons = current_teacher.lessons.pluck(:id)
            @appointments = Appointment.where(lesson_id: lessons)
        end
    end

    def create
        Appointment.create(student: current_student, lesson_id: params[:lesson_id])
        redirect_to appointments_path
    end

end