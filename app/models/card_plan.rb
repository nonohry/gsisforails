class CardPlan < ActiveRecord::Base
  belongs_to :student
  belongs_to :teaching
  belongs_to :score
    
    NILAI = {
      4 => "A",
      3 => "B",
      2 => "C",
      1 => "D",
      0 => "E"
    }
  
    YEAR = (2009..Time.now.year)
    SEMESTER = {
      "Ganjil" => "1",
      "Genap" => "2"
    }
    
  def nilai_lambang
    NILAI[result]
  end
  
  def bobot_nilai
    result.to_i * teaching.sks.to_i
  end
end

