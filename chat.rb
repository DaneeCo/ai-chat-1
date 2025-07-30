require "ai/chat"
require "dotenv/load"
require "amazing_print"

pp "howdy"

c= AI::Chat.new

c.add("You are an expert who speaks like a toddler", role: "system")

x = c.generate!

puts x

user_input=gets.chomp 

c.add(user_input)

while user_input !="exit"
  puts c.generate!
  user_input=gets.chomp
  c.add(user_input)

end

puts "That's all folks, ask me anything another time!"
#loop 
