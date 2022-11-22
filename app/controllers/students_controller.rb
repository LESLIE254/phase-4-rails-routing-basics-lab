class StudentsController < ApplicationController
    def index
       students = Student.all 
       render json: students
    end

    def grades
       students = Student.all.order('grade DEsc') 
       render json: students
    end

    def highest_grade
        students = Student.all.order('grade DEsc').limit(1)
        render json: students
    end
end
