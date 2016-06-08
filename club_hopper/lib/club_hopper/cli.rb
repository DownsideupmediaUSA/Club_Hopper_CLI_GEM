class ClubHopper::CLI

  def call
    
    list_events
    menu
    goodbye
  end


 def list_events
  puts "This Weekend's Techno Events In NYC!"
  @events = ClubHopper::Event.this_saturday
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.name} - #{event.date} "
   end
 end

 def menu
    input = nil
    while input != "exit"
    puts "Please enter the number of the event you would like more info on or enter list to see the list again or press exit to exit."
    input = gets.strip.downcase

    if input.to_i > 0
      the_event = @events[input.to_i-1]
      puts "#{the_event.name} - #{the_event.date}"
    elsif input == "list"
      list_events

    else
    puts "Not sure what you want, please type list or exit."
   end
 end
end

def goodbye
  puts "See you next time for the hottest techno events in NYC!!"
end


end
