require_relative 'Calc'
require_relative 'Action'

puts "Enter Last Completed User_ID:"
USERS_DONE = gets.chomp.to_i

run = Calc.new(USERS_DONE)

puts "RATE: #{run.user_processing_rate}"
puts "ESTIMATED_COMPLETION_TIME: #{run.completion_time}"

Action.add(USERS_DONE)