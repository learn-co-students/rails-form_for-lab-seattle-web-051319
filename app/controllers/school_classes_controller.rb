class SchoolClassesController < ApplicationController

  def index
    @school_class = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school = SchoolClass.new
  end

  def create
    @school = SchoolClass.new(school_class_params(:title, :room_number))

    @school.save
    redirect_to school_class_path(@school)

  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end




  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
