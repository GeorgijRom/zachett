class ClearslovarController < ApplicationController

	def clearslovar
		@words = Word.all
		@words.delete_all
		redirect_to '/slovar'
	end

end
