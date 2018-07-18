class LessonsController < ApplicationController

    def index
        @lessons = current_teacher.lessons
        @lesson = Lesson.new
    end

    def create 
        @lesson = Lesson.new(lesson_params)
        @lesson.teacher = current_teacher
        if @lesson.save
            redirect_to lessons_path
        end
    end

    private

    def lesson_params
        params.require(:lesson).permit(:subject, :homework, :time)
    end

end