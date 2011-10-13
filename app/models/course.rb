class Course < ActiveRecord::Base
  belongs_to :college
  has_many :subjects
  has_many :students
  has_one :parameter
  
  JENJANG = {
    "S1" => "S1",
    "D4" => "D4",
    "D3" => "D3",
    "D2" => "D2",
    "D1" => "D1"
  }
  
  AKREDITASI = {
    "A" => "A",
    "B" => "B",
    "C" => "C",
    "NA" => "Tidak Terakreditasi"
  }
  
  
end
