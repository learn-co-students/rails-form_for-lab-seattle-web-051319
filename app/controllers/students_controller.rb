class StudentsController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update]

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to @student
  end

  # def show
  #   set_params
  # end
  #
  # def edit
  #   set_params
  # end

  def update
    set_params
    @student.update(student_params)
    redirect_to @student
  end

  private
  def set_params
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
