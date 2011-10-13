class CollegesController < ApplicationController
  before_filter :confirm_admin
 
  def index
    @colleges = College.order('nama').page(params[:page]).per(10)
  end
  
  def new
    @college = College.new
  end

  def edit
    @college = College.find(params[:id])
  end

  def create
    @college = College.new(params[:college])

    if @college.save
      redirect_to colleges_path, notice: 'Data Perguruan tinggi berhasil di simpan.'
    else
      render action: "new"
    end
  end

  def update
    @college = College.find(params[:id])

    if @college.update_attributes(params[:college])
      redirect_to colleges_path, notice: 'Perguruan tinggi berhasil di update.'
    else
      render action: "edit"
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy

    redirect_to colleges_url
  end
end
