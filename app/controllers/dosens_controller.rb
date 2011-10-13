class DosensController < ApplicationController
  before_filter :confirm_admin

  def index
    @search = Dosen.search(params[:search])
    @dosens = @search.order("nama").page(params[:page]).per(10)
  end

  def new
    @dosen = Dosen.new
  end

  def edit
    @dosen = Dosen.find(params[:id])
  end

  def create
    @dosen = Dosen.new(params[:dosen])

    if @dosen.save
      redirect_to dosens_path, notice: 'Dosen berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @dosen = Dosen.find(params[:id])

    if @dosen.update_attributes(params[:dosen])
      redirect_to dosens_path, notice: 'Dosen berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @dosen = Dosen.find(params[:id])
    @dosen.destroy

    redirect_to dosens_url
  end
end
