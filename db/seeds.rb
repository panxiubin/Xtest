# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "这个seed会自动建立10个students，并且10个teachers，10个courses"

create_students = for i in 1..10 do
  Student.create!([name: "Student no.#{i}"])
end
puts "10 Students created."

create_teachers = for i in 1..10 do
  Teacher.create!([name: "Teacher no.#{i}"])
end
puts "10 Teachers created."

create_courses = for i in 1..10 do
  Course.create!([name: "Course no.#{i}", teacher_id: "#{i}"])
end
puts "10 Courses created."
