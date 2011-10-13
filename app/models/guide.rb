class Guide < ActiveRecord::Base
  belongs_to :dosen
  has_many :students
end
