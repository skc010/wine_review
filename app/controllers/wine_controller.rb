class WinesController < ActionController

	def index
  		@wines = Wine.all
	end

	def show
		@wine = Wine.find(param[:id])
	end
end