class Subject < ActiveRecord::Base
  belongs_to :course
  has_one :teaching
  has_many :recaps
  
  validates :kode, presence: true, uniqueness: true
  validates :nama, presence: true
end
