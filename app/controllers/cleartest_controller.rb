class CleartestController < ApplicationController

	def index
		@words = Test.all
		@words.delete_all

		redirect_to '/test'
	end

end
