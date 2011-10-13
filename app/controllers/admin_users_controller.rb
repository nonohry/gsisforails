class AdminUsersController < ApplicationController
  before_filter :confirm_admin

  def new
    @admin_user = AdminUser.new
  end
  
  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def create
    @admin_user = AdminUser.new(params[:admin_user])
    if @admin_user.save
      redirect_to home_path, notice: 'Admin user berhasil disimpan.'
    else
      render action: "new"
    end
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @admin_user.update_attributes(params[:admin_user])
      redirect_to home_path, notice: 'Admin user berhasil diperbaharui.'
    else
      render action: "edit"
    end
  end
end
