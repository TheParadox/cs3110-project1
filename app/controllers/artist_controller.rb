class ArtistController < ApplicationController
#this will handle searching/sifting through by artist

	def index
		@artists = Artist.all;
	end

	def search
		letter = params[:letter] + "%";
		@artists = Artist.where("name LIKE ?", letter).select("*");
	end

#this will handle displaying the artist info
end
