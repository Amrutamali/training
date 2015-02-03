=begin
desc "dump file"
task :dump_user_data, [:id, :name] =>:environment do|task, args|


  puts args
puts "in task"
#user1 = User.first
user1 = User.find( args[:id] )
puts user1.name
puts user1.email
temp = user1.name.split(" ")
puts temp[0]
puts temp[1]

# input by name


str = args[:name]
user2 = User.find_by(name: str)

puts "-----------"
puts user2.name,user2.email,user2.gender,user2.age


temp = user1.name.split(" ")

puts temp[0]
puts temp[1]


end

=end
=begin


namespace :dump_user_data do

  desc "dump file"
  task ":dump user data by id", [:id] =>:environment do|task, args|
    puts args
    puts "in task"
    #user1 = User.first
    user1 = User.find( args[:id] )
    puts user1.name
    puts user1.email
    temp = user1.name.split(" ")
    puts temp[0]
    puts temp[1]
  end

end
=end




##define name space
namespace :task  do
# describe task
  desc "dump the user data"
  #task name and optional argument
  task :task1,[:arg1] => :environment do |task, args|
    #default argument
    args.with_defaults(arg1: 'default value')
    p args[:arg1]

    #allow variable number of argument
    p args.extras
  end
end

