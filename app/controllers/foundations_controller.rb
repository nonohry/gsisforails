class FoundationsController < ApplicationController
  before_filter :confirm_admin

  def index
    @foundations = Foundation.order('nama').page(params[:page]).per(10)
  end

  def new
    @foundation = Foundation.new
  end

  def edit
    @foundation = Foundation.find(params[:id])
  end

  def create
    @foundation = Foundation.new(params[:foundation])

    if @foundation.save
      redirect_to foundations_path, notice: 'Data Yayasan Berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @foundation = Foundation.find(params[:id])

    if @foundation.update_attributes(params[:foundation])
      redirect_to foundations_path, notice: 'Data Yayasan Berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @foundation = Foundation.find(params[:id])
    @foundation.destroy

    redirect_to foundations_url
  end
end
