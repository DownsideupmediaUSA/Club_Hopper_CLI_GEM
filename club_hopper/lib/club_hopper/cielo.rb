class ClubHopper::Cielo
  attr_accessor :name, :date

 

  def self.this_friday_cielo   
  self.scrape_friday_event_cielo
  end
  
  def self.this_saturday_cielo   
  self.scrape_saturday_event_cielo
  end

  def self.scrape_friday_event_cielo
  events = []
  events << self.scrape_friday_cieloclub 
  end


  def self.scrape_saturday_event_cielo
  events = []
  events << self.scrape_saturday_cieloclub 
  end



  def self.scrape_friday_cieloclub 
  html = Nokogiri::HTML(open("http://cieloclub.com"))
  event = self.new
  event.name = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1192821.tfly-org-id-3635.tfly-venue-id-32 > a").text.strip
  event
  end


  def self.scrape_saturday_cieloclub 
  html = Nokogiri::HTML(open("http://cieloclub.com"))
  event = self.new
  event.name = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1187863.tfly-org-id-3635.tfly-venue-id-32 > a").text.strip
     
  event
  end










end