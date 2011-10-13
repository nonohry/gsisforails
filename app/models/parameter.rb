class Parameter < ActiveRecord::Base
  belongs_to :course
  belongs_to :college
  
  YEAR = (2009..Time.now.year)
  SEMESTER = {
    "1" => "Ganjil",
    "2" => "Genap"
  }
  
  def semester_nama
    SEMESTER[semester]
  end
  
  def self.semester_nama_options
    SEMESTER.to_a.sort
  end
end
