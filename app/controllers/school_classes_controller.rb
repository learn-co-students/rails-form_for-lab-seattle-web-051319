class SchoolClassesController < ApplicationController

    def new
        @schoolclass = SchoolClass.new
        render :'new'
    end

    def create 
        @schoolclass = SchoolClass.new(schoolclass_params)
        if @schoolclass.save
            redirect_to school_class_path(@schoolclass)
        else
            render :new
        end
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def schoolclass_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def show 
        @schoolclass = SchoolClass.find(params[:id])
        render :'show'
    end

    def update 
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(title: schoolclass_params[:title], room_number: schoolclass_params[:room_number])
        redirect_to school_class_path(@schoolclass)
    end

end
