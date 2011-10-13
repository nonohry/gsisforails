class Recap < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject
  belongs_to :score
  belongs_to :dosen
  
end
