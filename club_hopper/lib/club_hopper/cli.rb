class ClubHopper::CLI

  def call
    
    list_events
    menu
    goodbye
  end


 def list_events
  puts "This Weekend's Techno Events In NYC!"
  @events = ClubHopper::Event.this_week
  @events.each.with_index(1) do |deal, i|
    puts "#{i}. #{deal}"
   end
 end

 def menu
    input = nil
    while input != "exit"
    puts "Please enter the number of the event you would like more info on or enter list to see the list again or press exit to exit."
    input = gets.strip.downcase

    if input.to_i > 0
      puts @events[input.to_i-1]
    elsif input == "list"
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
