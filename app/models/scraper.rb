class Scraper

	def self.scrape
		data = HTTParty.get('http://www.brainyquote.com/quotes/authors/b/bob_dylan.html')

		#getting data
		response_body = data.response.body
	
		#pulling body out
		doc = Nokogiri::HTML(response_body)
		

		#getting only the  links inside .bqQuoteLink 
		quotes = []
		doc.css('.bqQuoteLink a').each do |link|
			quotes << link.content
		end

		quotes.sample



	end

end