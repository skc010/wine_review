class WinesController < ApplicationController

	def new
		@wine = Wine.new
	end

	def create
		@wine = Wine.new(wine_params)
		@wine.save
		redirect_to(@wine)
	end
	def index
  		@wines = Wine.all
	end

	def show
		@wine = Wine.find(params[:id])
	end

	private
	def wine_params
		params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
	end
end