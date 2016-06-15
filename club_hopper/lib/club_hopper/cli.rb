class ClubHopper::CLI

  def call
    this_weekend   
    what_day
   
    menu
    goodbye
    # list_friday_events || list_saturday_events 
  
  
  end


  def this_weekend
   puts "The weekend is finally upon us!!"
   puts "So you're lookin' to go out, huh... which day?"
   puts <<-DOC 
      1. Friday
      2. Saturday
     DOC

 # what_day    
   end

  def what_day
     input = nil
      input = gets.strip.downcase

      if  input == "1"
        list_friday_event_output
        list_friday_event_cielo
      elsif input == "2"
        list_saturday_event_output  
        list_saturday_event_cielo
      end
     end
  end


 def list_friday_event_output
  puts "This Friday's Techno Event at Output Brooklyn!"
  @events = ClubHopper::Event.this_friday_output
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.date} - #{event.name} "
    end
 end

  def list_friday_event_cielo
  puts "This Friday's Techno Events at Cielo NYC!"
  @events = ClubHopper::Event.this_friday_cielo
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.date} - #{event.name} "
    end
 end

 def list_saturday_event_output
  puts "This Saturday's Techno Events Output Brooklyn!"
  @events = ClubHopper::SatEvent.this_saturday_output
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.name} - #{event.date} "
 
  end
 end
 
  def list_saturday_event_cielo
  puts "This Saturday's Techno Events at Cielo NYC!"
  @events = ClubHopper::SatEvent.this_saturday_cielo
  @events.each.with_index(1) do |event, i|
    puts "#{i}. #{event.name} - #{event.date} "
 
  end
 end

 

 def menu
    input = nil
    while input != "exit"
    puts "Please enter the number of the event you would like more info on or type 'list' to see the list again or 'exit' to exit."
    input = gets.strip.downcase

    if input.to_i > 0
      the_event = @events[input.to_i-1]
      puts "#{the_event.name} - #{the_event.date}"
    elsif input == "list"    
      puts "Ok...let's take a step back here... "
    this_weekend
  elsif input == "exit"
    goodbye
    exit
    else
    puts "Not sure what you want, take a deep breath...." 
   end
  this_weekend
 end
end

def goodbye
  puts "See you next time for the hottest techno events in NYC!!"
end

# end
