class Todo < ActiveRecord::Base
  has_and_belongs_to_many :rewards
  has_one :schedule
  accepts_nested_attributes_for :rewards
  accepts_nested_attributes_for :schedule
  validates :title, presence: true
  validates :description, presence: true
end
