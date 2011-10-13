class Dosen < ActiveRecord::Base
  belongs_to :position
  belongs_to :status
  belongs_to :religion
  belongs_to :gender
  has_many :teachings
  has_many :recaps
end
