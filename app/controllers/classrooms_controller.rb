class ClassroomsController < ApplicationController
  before_filter :authorize, :only => [:create]

  def index
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create params[:classroom]
    respond_to do |format|
      if @classroom.valid?
        format.html { redirect_to classrooms_path }
        format.js { render :partial => "list", :content_type => 'text/html' }
      else
        format.html { render :index }
        format.js { render :partial => "form", :content_type => "text/html", :status => :unprocessable_entity }
      end
    end
  end
end
