   class ClubHopper::CLI

   def call
     start
     venue  
     what_venue
     menu
     goodbye  
   end

   def start
     puts "The weekend is finally upon us!!"
   end




   def venue
     puts "So you're lookin' to go out, huh... what club?"
     puts <<-DOC 
     1. Output - Brooklyn
     2. Cielo - Manhattan
     DOC
   end

   def what_venue
    input = nil
    input = gets.strip.downcase
     if  input == "1" 
       puts "Ah...Output in Brooklyn huh, excellent!"
       what_day_output
     elsif input == "2"
       puts "Ah...Cielo in Manhattan huh, excellent!"
       what_day_cielo
     end
    end
   end

   def what_day_output
     puts "What evening, Friday or Saturday?"
     puts "----------------------------------------"
     puts <<-DOC 
      1. Friday Night
      2. Saturday Night
     DOC
     input = nil
     input = gets.strip.downcase
       if input == "1"
       list_friday_event_output
       elsif input == "2"
       list_saturday_event_output
    end
   end 
    

     def what_day_cielo
        puts "What evening, Friday or Saturday?" 
        puts "----------------------------------------"
        puts <<-DOC 
        1. Friday Night
        2. Saturday Night
        DOC
        input = nil
        input = gets.strip.downcase
         if input == "1"
          list_friday_event_cielo
         elsif input == "2"
          list_saturday_event_cielo
       end
    end 
     



   def list_friday_event_output
     puts "This Friday's Event at Output Brooklyn!"
     @events = ClubHopper::Output.this_friday_output
     @events.each.with_index(1) do |event, i|
     puts "#{i}. #{event.name} - #{event.date}"
     end
   end

   def list_saturday_event_output
     puts "This Saturday's Event Output Brooklyn!"
     @events = ClubHopper::Output.this_saturday_output
     @events.each.with_index(1) do |event, i|
     puts "#{i}. #{event.name} - #{event.date} "
     end
   end

   def list_friday_event_cielo
     puts "This Friday's Event at Cielo NYC!"
     @events = ClubHopper::Cielo.this_friday_cielo
     @events.each.with_index(1) do |event, i|
     puts "#{i}. #{event.date} - #{event.name} "
     end
   end



   def list_saturday_event_cielo
    puts "This Saturday's Event at Cielo NYC!"
    @events = ClubHopper::Cielo.this_saturday_cielo
    @events.each.with_index(1) do |event, i|
     puts "#{i}. #{event.name} - #{event.date} "

   end
   end



   def menu
     input = nil
     while input != "exit"
        puts "Wanna see what else is going on? Type 'start' to see the start again or 'exit' to exit."
        input = gets.strip.downcase

        if input.to_i > 0
         the_event = @events[input.to_i-1]
         puts "#{the_event.name} - #{the_event.date}"
      elsif input == "start"    
         puts "Ok...let's see what else is goin' on this weekend... "
         call
      elsif input == "exit"
        goodbye
        exit
     else
        puts "Not sure what you want, take a deep breath...."
        call
     end
     
   end
   end

   def goodbye
    puts "See you next time for the hottest techno/house music events in NYC!!"
   end

   # end