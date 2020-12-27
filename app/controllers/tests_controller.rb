class TestsController < ApplicationController

	def index
		@testall = Test.all
	end
	
	def new
			
	end	
	

	def showtest
		@test = Test.find(params[:id])	
	end


	def create
		#render plain: params[:formz].inspect 
	@wordnew = Test.new(test_params)
	@wordnew.save
	redirect_to '/tests/new'
	end

	private def test_params
	params.require(:vopros).permit(:nv,:nt, :otv, :vop)
	end


end
