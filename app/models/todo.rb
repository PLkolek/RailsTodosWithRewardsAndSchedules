class Todo < ActiveRecord::Base
  has_one :reward
  has_one :schedule
  accepts_nested_attributes_for :reward
  accepts_nested_attributes_for :schedule
end
