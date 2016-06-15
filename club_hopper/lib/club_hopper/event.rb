class ClubHopper::Event
  attr_accessor :name, :date 
 

  def self.this_friday_output   
  self.scrape_friday_event_output
  end
  
  def self.this_friday_cielo   
  self.scrape_friday_event_cielo
  end

  def self.scrape_friday_event_output
  events = []
  events << self.scrape_friday_outputnyc
  # events << self.scrape_friday_cieloclub 
  end

  def self.scrape_friday_event_cielo
  events = []
  # events << self.scrape_friday_outputnyc
  events << self.scrape_friday_cieloclub 
  
  end


   def self.scrape_friday_outputnyc
     doc = Nokogiri::HTML(open("http://outputclub.com/"))
     # binding.pry
     event = self.new
     event.name = doc.css("#content > article.post-4099.post.type-post.status-publish.format-standard.hentry.category-uncategorized > ul > li > h2:nth-child(1)").text.strip 
     event.date = doc.css("#content > article.post-4099.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text
    event
   end

   def self.scrape_friday_cieloclub 
     html = Nokogiri::HTML(open("http://cieloclub.com"))
     
     event = self.new
     # event.date = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1200561.tfly-org-id-3635.tfly-venue-id-32 > a > span").text
     event.name = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1200561.tfly-org-id-3635.tfly-venue-id-32 > a").text.strip
     event
   end



   







  end



 







 


