class StudentsController < ApplicationController
    def index
        @students = Student.all
        render :index
    end
    
    def show
        @student = Student.find(params[:id])
        render :show
    end

    def new
        @student = Student.new
        render :new
    end

    def create
        @student = Student.new(post_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def update
        @student = Student.find(params[:id])
        @student.update(post_params(:first_name,:last_name))
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
        render :edit
    end

    
    private 

    def post_params(*args)
        params.require(:student).permit(*args)
    end
end