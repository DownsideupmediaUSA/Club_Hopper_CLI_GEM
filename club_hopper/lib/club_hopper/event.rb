class ClubHopper::Event
  attr_accessor :name, :price, :availability, :url 

  def self.this_week
  #Returns list of this weeks events.
  puts <<-DOC

    1. Dennis Ferrer 06/10/2016 - Flash Factory
    2. Hercules & Love Affair 06/10/2016 - Output 
    3. Paco Osuna 12/31/2016 - Space NYC
  DOC

   event_1 = self.new
   event_1.name = "Dennis Ferrer 06/10/2016 - Flash Factory"
   event_1.price = "$20.00"
   event_1.availability = true
   event_1.url = "https://www.ticketfly.com/purchase/event/1207017"

   event_2 = self.new
   event_2.name = "Hercules & Love Affair 06/10/2016 - Output"
   event_2.price = "$20.00"
   event_2.availability = true
   event_2.url = "http://outputclub.com/#post-4066"
 
   event_3 = self.new
   event_3.name = "Paco Osuna 06/10/2016"
   event_3.price = "$20.00"
   event_3.availability = true
   event_3.url = "https://www.ticketmob.com/integrate/event.cfm?originURL=http%3A%2F%2Fwww%2Espaceibizany%2Ecom%2F&siteID=583&brandProperty=ES&showTimingID=166570"

  [event_1, event_2, event_3]
  end
 end



