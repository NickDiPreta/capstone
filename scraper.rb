require 'open-uri'
require 'nokogiri'
require 'json'

doc = Nokogiri::HTML(URI.open("https://www.rottentomatoes.com/top/bestofrt/top_100_action__adventure_movies/"),&:noblanks).css('#top_movies_main').css('.table')

doc.css('a').each do |link|
    puts link.content
end 

# puts document.to_xhtml( indent:3, indent_text:"." )