class Classroom < ActiveRecord::Base
  belongs_to :instructor
  has_many :registrations
  has_many :students, :through => :registrations
end
