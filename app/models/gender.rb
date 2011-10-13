class Gender < ActiveRecord::Base
  has_many :dosens
  has_many :students
end
