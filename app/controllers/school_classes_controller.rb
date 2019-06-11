class SchoolClassesController < ApplicationController

  before_action :set_params, only:[:edit, :update, :show]

  def new
    @school_class = SchoolClass.new
    render :new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save

    redirect_to @school_class
  end

  # def show
  #   set_params
  # end

  # def edit
  #   set_params
    # render :edit
  # end

  def update
    # set_params
    @school_class.update(school_class_params(:title))
    redirect_to @school_class
  end

  private

  def set_params
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
