class InformationController < ApplicationController

  def index
    @information = Information.all
  end

  def new
    @information = Information.new
  end

  def edit
    @information = Information.find(params[:id])
  end

  def create
    @information = Information.new(params[:information])

      if @information.save
        redirect_to information_index_path, notice: 'Data Berita berhasil disimpan.'
      else
        render action: "new"
      end
    end
  end

  def update
    @information = Information.find(params[:id])

    if @information.update_attributes(params[:information])
      redirect_to information_index_path, notice: 'Data Berita berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy

    redirect_to information_index_url
end
