

class  StudentsController < ApplicationController
    #before_action :get_student, :only [:show,:edit,:update]


    def index
      @students = Student.all
    end

    def show
      @student = Student.find(params[:id])
    #  render:show
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.new(student_params)
      if @student.valid?
        @student.save
        redirect_to student_path(@student)
      else
        render:new
      end
    end

    def edit
      get_student
      #@student = Student.find(params[:id])
    end

    def update
      @student = Student.find(params[:id])
      @student.update(student_params)
      redirect_to student_path(@student)
    end

private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

    def get_student
       @student = Student.find(params[:id])
     end
end
