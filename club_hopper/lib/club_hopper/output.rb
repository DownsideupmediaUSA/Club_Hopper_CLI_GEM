class ClubHopper::Output
  attr_accessor :name, :date 
 

  def self.this_friday_output   
  self.scrape_friday_event_output
  end

  def self.this_saturday_output   
  self.scrape_saturday_event_output
  end
  
  def self.scrape_friday_event_output
  events = []
  events << self.scrape_friday_outputnyc
  end

  def self.scrape_saturday_event_output
  events = []
  events << self.scrape_saturday_outputnyc
  end


  def self.scrape_friday_outputnyc
  doc = Nokogiri::HTML(open("http://outputclub.com/"))
  event = self.new
  event.name = doc.css("#content > article.post-4008.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(3)").text
  event.date = doc.css("#content > article.post-4008.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text  
  
  event
  end

  def self.scrape_saturday_outputnyc
  doc = Nokogiri::HTML(open("http://outputclub.com/"))
  event = self.new
  event.name = doc.css("#content > article.post-3974.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(3)").text
  event.date = doc.css("#content > article.post-3974.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text

  event
  end

 

end #--class end-->



 







 


