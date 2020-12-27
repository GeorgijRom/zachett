class ZayavkaController < ApplicationController
	def zayavka

	end

	def create
		#render plain: params[:formz].inspect 
	@Zayavkanew = Zayavkanew.new(formz_params)
	@Zayavkanew.save

	redirect_to '/thanks'
	end

	private def formz_params
	params.require(:formz).permit(:name, :name2, :mail)
	end

end
