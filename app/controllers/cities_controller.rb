class CitiesController < ApplicationController

	def create
		@city = City.new(city_params)
		if @city.save
			respond_to do |format|
				format.html {redirect_to root_path}
				format.json { render json: @city}
			end
		end
	end

	def show
		@city = City.find(params[:id])
		puts params
	end



	private

	def city_params
		params.require(:city).permit(:population, :stores, :name, :score)
	end

end
