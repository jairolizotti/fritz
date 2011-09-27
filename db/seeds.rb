# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Classroom.create :room => "Sala 1", :capacity => 10, :instructor => Instructor.create(:name => "Juan")
Classroom.create :room => "Sala 2", :capacity => 12, :instructor => Instructor.create(:name => "Diogo")
Classroom.create :room => "Sala 3", :capacity => 5, :instructor => Instructor.create(:name => "Emilio")
Classroom.create :room => "Sala 4", :capacity => 6, :instructor => Instructor.create(:name => "Wayne")
Classroom.create :room => "Sala 5", :capacity => 10, :instructor => Instructor.create(:name => "Peter")
Classroom.create :room => "Sala 6", :capacity => 15, :instructor => Instructor.create(:name => "Nicolas")
