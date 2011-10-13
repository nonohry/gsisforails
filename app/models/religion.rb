class Religion < ActiveRecord::Base
  has_many :dosens
  has_many :students
end
