# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "user")

Role.first.users.create(name: "Atul", email: "abh@xyz.com", age: 22, gender: "M", password: "random123")
User.create(name: "xyz", email: "xyz@gmail.com", age: 23, gender: "F", password: "xyz", role_id: 2)
User.create(name: "abc", email: "abc@gmail.com", age: 33, gender: "F", password: "abc", role_id: 2)


Survey.create(name: "Code Retreat", conducted_on: "2014-10-12")
Survey.create(name: "techno twieet", conducted_on: "2014-1-12")
Survey.first.questions.create(description: "How was the event")
Question.create(description: "Do you want to do  this event again", survey_id: 2)


Question.first.options.create(description: "Good")
Question.first.options.create(description: "Bad")

Option.create(description: "Yes", question_id: 2)
Option.create(description: "No", question_id: 2)

Response.create(option_id: 1, user_id: 1)
Response.create(option_id: 2, user_id: 2)


