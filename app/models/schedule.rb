class Schedule < ActiveRecord::Base
  belongs_to :todo
  validates :day_of_week, presence: true
  validates :from, presence: true
  validates :to, presence: true
end
