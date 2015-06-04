# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'JSON'
require 'pry'
json_data = File.read('ruby.json')
parsed_data = JSON.parse(json_data)
parsed_data['ruby']
i = 0
while i< parsed_data['ruby'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['ruby'][i]['url']
  curriculum.description = parsed_data['ruby'][i]['description']
  curriculum.title = parsed_data['ruby'][i]['title']
  curriculum.curriculum_type = "Ruby"
  curriculum.save
  i+=1
end

angular_data = File.read('angular.json')
parsed_data = JSON.parse(angular_data)
parsed_data['angularJS']
i = 0
while i< parsed_data['angularJS'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['angularJS'][i]['url']
  curriculum.description = parsed_data['angularJS'][i]['description']
  curriculum.title = parsed_data['angularJS'][i]['title']
  curriculum.curriculum_type = "AngularJS"
  curriculum.save
  i+=1
end

git_data = File.read('git.json')
parsed_data = JSON.parse(git_data)
parsed_data['git']
i = 0
while i< parsed_data['git'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['git'][i]['url']
  curriculum.description = parsed_data['git'][i]['description']
  curriculum.title = parsed_data['git'][i]['title']
  curriculum.curriculum_type = "Git"
  curriculum.save
  i+=1
end

jquery_data = File.read('jquery.json')
parsed_data = JSON.parse(jquery_data)
parsed_data['jQuery']
i = 0
while i< parsed_data['jQuery'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['jQuery'][i]['url']
  curriculum.description = parsed_data['jQuery'][i]['description']
  curriculum.title = parsed_data['jQuery'][i]['title']
  curriculum.curriculum_type = "jQuery"
  curriculum.save
  i+=1
end

fundamentals_data = File.read('fundamentals.json')
parsed_data = JSON.parse(fundamentals_data)
parsed_data['fundamentals']
i = 0
while i< parsed_data['fundamentals'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['fundamentals'][i]['url']
  curriculum.description = parsed_data['fundamentals'][i]['description']
  curriculum.title = parsed_data['fundamentals'][i]['title']
  curriculum.curriculum_type = "Fundamentals"
  curriculum.save
  i+=1
end

sql_data = File.read('sql.json')
parsed_data = JSON.parse(sql_data)
parsed_data['SQL']
i = 0
while i< parsed_data['SQL'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['SQL'][i]['url']
  curriculum.description = parsed_data['SQL'][i]['description']
  curriculum.title = parsed_data['SQL'][i]['title']
  curriculum.curriculum_type = "SQL"
  curriculum.save
  i+=1
end

subl_data = File.read('subl.json')
parsed_data = JSON.parse(subl_data)
parsed_data['Sublime']
i = 0
while i< parsed_data['Sublime'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['Sublime'][i]['url']
  curriculum.description = parsed_data['Sublime'][i]['description']
  curriculum.title = parsed_data['Sublime'][i]['title']
  curriculum.curriculum_type = "Sublime"
  curriculum.save
  i+=1
end

mongoDB_data = File.read('mongoDB.json')
parsed_data = JSON.parse(mongoDB_data)
parsed_data['MongoDB']
i = 0
while i< parsed_data['MongoDB'].length
  curriculum = Curriculum.new
  curriculum.url = parsed_data['MongoDB'][i]['url']
  curriculum.description = parsed_data['MongoDB'][i]['description']
  curriculum.title = parsed_data['MongoDB'][i]['title']
  curriculum.curriculum_type = "MongoDB"
  curriculum.save
  i+=1
end

tutors_data = File.read('tutors.json')
parsed_data = JSON.parse(tutors_data)
data = parsed_data['Tutors']
i = 0
while i< data.length
  user = User.new
  user.url = data[i]['tutors']['src']
  user.email = data[i]['tutors']['alt'].split(" ")[0]+"@gmail.com"
  user.first_name = data[i]['tutors']['alt'].split(" ")[0]
  user.availability ="I am available most of " + ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample + [" at ", " after "].sample + ["1","2","3","4","5","6","7","8","9","10","11"].sample + " pm."
  user.description = "I am nice person with " + ["javascript", "ruby", "css"].sample + " skills. I love " + ["dog", "cat", "lego", "to eat sushi", "travel"].sample + " and I am currently " + ["looking for a full time developer position in SF", "working for facebook", "working for google", "working for lyft", "working for Khan Academy", "working for DBC"].sample + ". Hope to meet you and share my experties!"
  user.user_type = [1, 2].sample
  user.password = "heff3030"
  user.save
  i+=1
end

user = User.new
  user.url ="http://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Ryan_Gosling_2_Cannes_2011_(cropped).jpg/220px-Ryan_Gosling_2_Cannes_2011_(cropped).jpg"
  user.email = "sarahkorea@gamil.com"
  user.first_name = "Ryan"
  user.availability ="Anytime for you Baby"
  user.description = "I am a very handsome person and know some of CSS. I have a couple of books publish for Urbanoutfitters but they are not related to my CSS skills. If you call me and have a chat with me, I will show you what I can do."
  user.user_type = 2
  user.password = "password"
  user.save
  i+=1