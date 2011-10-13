require 'digest'

class AdminUser < ActiveRecord::Base
    
  
  has_secure_password
  
  validates :username, uniqueness: true
  validates_presence_of :password, :on => :create
  
end
