class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grades = Student.order(grade: :desc)
        render json: students_by_grades
    end
    
    def highest_grades
        smart_kid = Student.order(grade: :desc).first
        render json: smart_kid
    end

end
