class Student < ActiveRecord::Base
  has_many :registrations
  has_many :classrooms, :through => :registrations
end
