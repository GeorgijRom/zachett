class SlovarController < ApplicationController
	def slovar
		@words = Word.all

	end	

	def create
		#render plain: params[:formz].inspect
	@wordnew = Word.new(word_params)
	@wordnew.save

	redirect_to '/slovar'
	end

	private def word_params
	params.require(:forms).permit(:word)
	end

end
