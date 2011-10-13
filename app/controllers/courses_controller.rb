class CoursesController < ApplicationController
  before_filter :confirm_admin
  
  def index
    @courses = Course.order('nama').page(params[:page]).per(10)
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])

    if @course.save
      redirect_to courses_path, notice: 'Prodi berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(params[:course])
      redirect_to courses_path, notice: 'Prodi berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_url
  end
end
