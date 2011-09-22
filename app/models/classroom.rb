class Classroom < ActiveRecord::Base
  belongs_to :instructor
  has_many :registrations
  has_many :students, :through => :registrations

  validates_numericality_of :capacity
  validates_presence_of :room, :capacity
end
