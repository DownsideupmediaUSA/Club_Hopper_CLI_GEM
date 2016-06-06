class ClubHopper::CLI

  def call
    puts "This Weekend's Techno Events In NYC!"
    list_events
    menu
    goodbye
  end


 def list_events
  @deals = ClubHopper::Event.this_week
 end

 def menu
  input = nil
  while input != "exit"
    puts "Please enter the number of the event you would like more info on or enter list to see the list again or press exit to exit."
  input = gets.strip.downcase
  case input
  when "1"
    puts "More info on event 1"
  when "2"
    puts "More info on event 2"
  when "3"
    puts "More info on event 3"
  when "list"
    list_events
  else
  puts "Not sure what you want. Please type list or exit."
 end
end
end

def goodbye
  puts "See you next time for the hottest techno events in NYC!!"
end


end

