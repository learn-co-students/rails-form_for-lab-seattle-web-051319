class StudentsController < ApplicationController

    def new
        @student = Student.new
        render :'new'
    end

    def create 
        @student = Student.new(student_params)
        if @student.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end



    def show 
        @student = Student.find(params[:id])
        render :'show'
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update 
        @student = Student.find(params[:id])
        @student.update(first_name: student_params[:first_name], last_name: student_params[:last_number])
        redirect_to student_path(@student)
    end

    private 
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
