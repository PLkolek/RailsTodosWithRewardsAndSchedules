class Todo < ActiveRecord::Base
  has_one :reward
  has_one :schedule
end
