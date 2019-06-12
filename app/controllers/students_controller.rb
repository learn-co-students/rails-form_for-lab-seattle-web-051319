class StudentsController < ApplicationController

  def index
    @studentss = Student.all
  end

  def show
    @studentss = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))

    @student.save
    redirect_to student_path(@student)

  end

  def edit
    @studenta = Student.find(params[:id])
  end

  def update
    @studenta = Student.find(params[:id])
    @studenta.update(student_params(:first_name, :last_name))
    redirect_to student_path(@studenta)
  end

  private
  def student_params(*args)
    params.require(:student).permit(*args)
  end


end
