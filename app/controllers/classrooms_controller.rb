class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def new
  end
end
