class AlbumController < ApplicationController
#this will control searching/sifting by Albums

	def index
		@albums = Album.all;
	end

	def search
		letter = params[:letter] + "%";
		@albums = Album.where("name LIKE ?", letter).select("*");
	end

#this will handle displaying the albums including calling the relavent songs
end
