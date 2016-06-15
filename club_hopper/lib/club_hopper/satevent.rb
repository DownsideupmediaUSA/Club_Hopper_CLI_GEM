class ClubHopper::SatEvent
  attr_accessor :name, :date

  def self.this_saturday_output   
  self.scrape_saturday_event_output
  end
  
  def self.this_saturday_cielo   
  self.scrape_saturday_event_cielo
  end

  def self.scrape_saturday_event_output
  events = []
  events << self.scrape_saturday_outputnyc
  # events << self.scrape_friday_cieloclub 
  end

  def self.scrape_saturday_event_cielo
  events = []
  # events << self.scrape_friday_outputnyc
  events << self.scrape_saturday_cieloclub 
  
  end

  def self.scrape_saturday_outputnyc
    doc = Nokogiri::HTML(open("http://outputclub.com/"))
    event = self.new
    event.date = doc.css("#content > article.post-4151.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(2)").text
    event.name = doc.css("#content > article.post-4151.post.type-post.status-publish.format-standard.hentry.category-uncategorized > h1:nth-child(3)").text
     
    event
  end


  def self.scrape_saturday_cieloclub 
    html = Nokogiri::HTML(open("http://cieloclub.com"))
    event = self.new
    event.name = html.css("#main > div.col.col1 > div > ul > li.tfly-event-id-1187863.tfly-org-id-3635.tfly-venue-id-32 > a").text.strip
     
    event
  end










end