# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

array = ['Guitar', 'Piano', 'Clarinet']
array.each do |instrument|
    Subject.create!({instrument: instrument, student_id: Student.first.id})
end

# Lesson.destroy_all

# # Lesson.create([
# #     {teacher: Teacher.first, subject: 'Tuba', homework: 'Play it again Sam', time: Time.now()},
# #     {teacher: Teacher.first, subject: 'Flute', homework: 'It is fun', time: Time.now()}
# # ])

# Appointment.destroy_all

# Appointment.create([
#     {student: Student.first, lesson: Lesson.first},
#     {student: Student.first, lesson: Lesson.second}
# ])