class ClubHopper::CLI

  def call
    this_weekend
    what_day
    list_friday_events || list_saturday_events
    menu
    goodbye
  end


  def this_weekend
   puts "The weekend is finally upon us!!"
   puts <<-DOC 
      1. Friday
      2. Saturday
     DOC
   end
 
  # def list_this_weekend
  #   puts "The weekend us upon us!!"
  #   puts <<DOC  

  #   1. Friday
  #   2. Saturday
  #   DOC 
  
  # end

  def what_day
     input = nil
    while input != "exit"
      puts "So you're lookin' to go out, huh... what day? (Or type exit to exit)"
      input = gets.strip.downcase

      if  input == "1"
        list_friday_events
      elsif input == "2"
        list_saturday_events
      end
      menu
    end
  end


 def list_friday_events
  puts "This Friday's Techno Events In NYC!"

  @events = ClubHopper::Event.this_friday
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.name} - #{event.date} "
     end
 end

 def list_saturday_events
  puts "This Saturday's Techno Events In NYC!"
  @events = ClubHopper::Event.this_saturday
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.name} - #{event.date} "
  menu
  end
 end

 def menu
    input = nil
    while input != "exit"
    puts "Please enter the number of the event you would like more info on or type list to see the list again or press exit to exit."
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
