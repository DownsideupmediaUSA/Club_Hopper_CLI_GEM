class ClubHopper::Event
  attr_accessor :name, :date 
 


 
  

  def self.this_saturday   
  #Returns list of this weeks events.
  self.scrape_event
  end
  
  def self.scrape_event
  events = []
  events << self.scrape_outputNYC
  
  end

   def self.scrape_outputNYC 
     doc = Nokogiri::HTML(open("http://outputclub.com/"))

     event = self.new
     event.name = doc.css("#content > article.post-4070.post.type-post.status-publish.format-standard.hentry.category-uncategorized > ul > li > h2:nth-child(1)").text.strip  
     event.date = doc.css("#content > article.post-4090.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text

     event
     end
  end



 







 



