class ParametersController < ApplicationController
  before_filter :confirm_admin

  def index
    @parameters = Parameter.all
  end

  def new
    @parameter = Parameter.new
  end

  def edit
    @parameter = Parameter.find(params[:id])
  end

  def create
    @parameter = Parameter.new(params[:parameter])

    if @parameter.save
      redirect_to parameters_path, notice: 'Data Parameter berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @parameter = Parameter.find(params[:id])

    if @parameter.update_attributes(params[:parameter])
      redirect_to parameters_path, notice: 'Data Parameter berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @parameter = Parameter.find(params[:id])
    @parameter.destroy

    redirect_to parameters_url
  end
  
  def ubah_semua
    @parameters = Parameter.all
    if @parameters
      @parameters.each do |parameter|
        parameter.update_attributes(params[:parameter])
      end
    end
    redirect_to parameters_path
  end
end
