class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    studentsOrdered = Student.order(grade: :desc)
    render json: studentsOrdered
  end

  def highest_grade
    student = Student.order(grade: :asc).last
    render json: student
  end
end
