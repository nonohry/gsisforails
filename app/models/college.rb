class College < ActiveRecord::Base
  belongs_to :foundation
  has_many :courses
  has_many :students
  has_many :parameters
end
