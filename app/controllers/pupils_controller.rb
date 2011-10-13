class PupilsController < ApplicationController
  layout 'pupil'
  
  def new
    if session[:student_id]
      redirect_to root_url
    end
  end
  
  def create
    student = Student.find_by_nim(params[:nim])
    if student && student.authenticate(params[:password]) && (student.active_id == 1)
      session[:student_id] = student.id
      redirect_to users_path, notice: "Loggen In"
    else
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end
  
  def destroy
    session[:student_id] = nil
    redirect_to users_path, notice: "Logged out!"
  end

end
