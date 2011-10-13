class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
    def current_admin
      if session[:user_id]
        @current_admin ||= AdminUser.find(session[:user_id])
      else
        @current_admin
      end
      
    end
    
    helper_method :current_admin
        
    def confirm_admin
      unless session[:user_id]
        flash[:alert] = 'Please Login'
        redirect_to login_path
        return false
      else 
        return true
      end
    end
    
    def current_student
      if session[:student_id]
        @current_student ||= Student.find(session[:student_id])
      else
        @current_student
      end
    end
    
    helper_method :current_student
    
    def confirm_student
      unless session[:student_id]      
        flash[:alert] = 'Please Login'
        redirect_to masuk_path
        return false
      else
        return true
      end
    end
end
