class Instructor < ActiveRecord::Base
  has_many :classrooms
  has_one :contact
  validates_presence_of :name

  def invoice
    classrooms.where("finish_at <= ?", Date.today - 30.days).
      map{|c| c.course.workload}.sum * hourly
  end

end
