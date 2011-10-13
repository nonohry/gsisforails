class Subject < ActiveRecord::Base
  belongs_to :course
  has_one :teaching
  has_many :recaps
  
  validates :kode, :nama, presence: true
end
