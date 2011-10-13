class SubjectsController < ApplicationController
  before_filter :confirm_admin
  
  def index  
    @subjects = Subject.order('nama').page(params[:page]).per(10)
  end

  def new
    @subject = Subject.new
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(params[:subject])

    if @subject.save
      redirect_to subjects_path, notice: 'Data Mata Kuliah Berhasil disimpan.'    
    else
      render action: "new"
    end
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(params[:subject])
      redirect_to subjects_path, notice: 'Data Mata Kuliah berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    redirect_to subjects_url
  end
end