class Score < ActiveRecord::Base
  has_many :card_plans
  has_many :recaps
end
