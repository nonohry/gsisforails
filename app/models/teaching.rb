class Teaching < ActiveRecord::Base
  belongs_to :dosen
  belongs_to :subject
  belongs_to :group
  has_many :card_plans
    
  SEMESTER = {
    "1" => "Ganjil",
    "2" => "Genap"
  }
end
