class SchoolClassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
  end

  def show
    #get_schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    get_schoolclass
  end

  def update

    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(schoolclass_params)
    redirect_to school_class_path(@schoolclass)

  end

  def new
    @schoolclass = SchoolClass.new
    render:new
  end

  def create
    @schoolclass = SchoolClass.new(schoolclass_params)
    if @schoolclass.valid?
      @schoolclass.save
      redirect_to school_class_path(@schoolclass)
    else
      render:new
    end
  end

private

  def schoolclass_params
    params.require(:school_class).permit(:title,:room_number)
  end

  def get_schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end

end
