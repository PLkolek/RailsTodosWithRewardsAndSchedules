class Reward < ActiveRecord::Base
  belongs_to :todo
  validates :title, presence: true
  validates :description, presence: true
end
