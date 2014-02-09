class QuotesController < ApplicationController
	def index
		@quotes = Scraper.scrape
	end 

end
