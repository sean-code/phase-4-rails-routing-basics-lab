class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades
        all_students = Student.order(grade: :desc)
        render json: all_students
    end
    # Bonus Lab
    def high_grade
       
        students = Student.maximum(:grade)
        student_x =  Student.select("Max(grade) as max_grade").first.attributes
        render json: students
    end
end
