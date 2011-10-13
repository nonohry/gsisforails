class RoomsController < ApplicationController
  before_filter :confirm_admin

  def index
    @rooms = Room.all
  end
  
  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def create
    @room = Room.new(params[:room])
    
    if @room.save
      redirect_to rooms_path, notice: 'Data Ruangan berhasil disimpan.'        
    else
      render action: "new"
    end
  end

  def update
    @room = Room.find(params[:id])

    if @room.update_attributes(params[:room])
      redirect_to rooms_path, notice: 'Data Ruangan berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    redirect_to rooms_url
  end
end
