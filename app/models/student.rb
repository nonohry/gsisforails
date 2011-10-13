require 'digest'
class Student < ActiveRecord::Base
  # attr_accessible :password, :password_confirmation
  belongs_to :religion
  belongs_to :gender
  belongs_to :college
  belongs_to :course
  belongs_to :guide
  has_many :card_plans
  has_many :recaps
  belongs_to :active
  
  validates :nim, uniqueness: true
  
  
  
  has_secure_password
  
  validates_presence_of :password, :on => :create
  
  def nama_lengkap
    "#{self.nama_depan} #{self.nama_belakang}"
  end
  
  def prodi_strata
    "#{self.course.nama} #{self.course.jenjang}"
  end
end
