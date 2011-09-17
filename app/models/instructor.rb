class Instructor < ActiveRecord::Base
  has_many :classrooms
  has_one :contact
  validates_presence_of :name
end
