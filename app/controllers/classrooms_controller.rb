class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create params[:classroom]
    if @classroom.valid?
      redirect_to classrooms_path
    else
      render :new
    end
  end
end
