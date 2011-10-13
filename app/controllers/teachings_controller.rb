class TeachingsController < ApplicationController
  before_filter :confirm_admin
 
  def index
    @teachings = Teaching.order('semester').page(params[:page]).per(10)
  end

  def new
    @teaching = Teaching.new
  end

  def edit
    @teaching = Teaching.find(params[:id])
  end

  def create
    @teaching = Teaching.new(params[:teaching])

    if @teaching.save
      redirect_to teachings_path, notice: 'Data Perkuliahan berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @teaching = Teaching.find(params[:id])

    if @teaching.update_attributes(params[:teaching])
      redirect_to teachings_path, notice: 'Data Perkuliahan berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @teaching = Teaching.find(params[:id])
    @teaching.destroy
 
    redirect_to teachings_url
  end
end
