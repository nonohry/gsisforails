class UsersController < ApplicationController
  before_filter :confirm_student
  
  layout 'pupil'
  
  def index
    
  end

  def biodata
    @mahasiswa = current_student
  end

  def password
    @mahasiswa= current_student
  end
  
  def simpan_student
    @mahasiswa = current_student
    if @mahasiswa.update_attributes(params[:mahasiswa])
      redirect_to users_biodata_path, notice: 'Data Mahasiswa berhasil di update'
    else
      render 'biodata'
    end
  end
  
  def simpan_password
    @mahasiswa = current_student
    if @mahasiswa.update_attributes(params[:mahasiswa])
      session[:student_id] = nil
      redirect_to root_url
    else
      render 'password'
    end
  end
  
end
