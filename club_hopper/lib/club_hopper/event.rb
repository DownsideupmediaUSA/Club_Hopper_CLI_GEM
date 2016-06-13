class ClubHopper::Event
  attr_accessor :name, :date 
 

  def self.this_friday    
  self.scrape_friday_event
  end
  
  def self.scrape_friday_event
  events = []
  events << self.scrape_friday_outputnyc
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



  # def self.this_saturday   
  # #Returns list of this weeks events.
  # self.scrape_saturday_event
  # end
  
  # def self.scrape_saturday_event
  # events = []
  # events << self.scrape_saturday_outputnyc
  # events << self.scrape_saturday_cieloclub 
  
  # end

  #  def self.scrape_saturday_outputnyc
  #    doc = Nokogiri::HTML(open("http://outputclub.com/"))
  #    event = self.new
  #    event.name = doc.css("#content > article.post-4070.post.type-post.status-publish.format-standard.hentry.category-uncategorized > ul > li > h2:nth-child(1)").text  
  #    event.date = doc.css("#content > article.post-4070.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text 

  #    # event
  #    end


  #    def self.scrape_saturday_cieloclub 
  #    html = Nokogiri::HTML(open("http://cieloclub.com"))

   
  #    event = self.new
  #    event.date = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1202829.tfly-org-id-3635.tfly-venue-id-32 > a").text.gsub("SOUP Presents | Jonn Hawley, Love & Logic + Friends", "").strip
  #    event.name = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1202829.tfly-org-id-3635.tfly-venue-id-32 > a").text.gsub("Friday, Jun 10th - SOUP Presents | ", "").strip
     
  #    event
  #   end










  end



 







 


