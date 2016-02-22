# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_list = [
  {name: "John D.", email: "johndexample@email.com",  wechat: "johndrhec"},
  {name: "Ying W.", email: "yingwexample@email.com", wechat: "yingwrhec"},
  {name: "Frank S.", email: "franksexample@email.com", wechat: "franksrhec"},
]

User.create user_list

instructor_list = [
  {name: "Annt", courses: "Hi! My name is Teacher Ann,I have been an ESL teacher for 7 years, Teaching is really my passion.I have tried to engage in other fields of work but my love for teaching leads me back to where my heart belongs. Through teaching, I have learned to love and respect foreign culture. I also earned respect not only as a teacher but also as a Filipino. It is really an honor to be called a teacher, a lifetime devotion and a noble profession. Hope to see you soon."  education: "BA, ESL, UCLA, 2012"},
  {name: "Pat", courses: "Hello! My name is Pat. I love taking photographs of landscapes, food, and more. I enjoy traveling a lot because I get to widen my knowledge about the different cultures and lifestyles of people. I am a very talkative person, but I enjoy listening as well. I love teaching anf have fun with students. Hope we can have fun in our class."  education: "BA, MA, ESL, USC, 2013"},
  {name: "Nate", courses: "Nate is originally from Boston and has lived in 9 different countries. Currently he lives in Beijing, which has been his second home since 2010. He has more than 5 years of teaching experience. He enjoys reading, photography, history, current events and politics."  education: "BA, ESL, BU, 2008"},
]

Instructor.create instructor_list

course_list = [
  {category: "Test Prep", : name: "SAT English",  course_id: "1"},
  {category: "North American Studies", : name: "The US Banking System",  course_id: "2"},
  {category: "Test Prep", : name: "GRE Math",  course_id: "3"},
]

Course.create course_list

session_list = [
  {course_id: "2", title: "The US Banking System",  date:},
  {course_id: "1", title: "SAT English",  date:},
  {course_id: "3", title: "GRE Math",  date:},
]

Session.create session_list
