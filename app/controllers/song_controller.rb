class SongController < ApplicationController
#this will handle searching/sifting by song

	def index
		@songs = Song.all;
	end

	def search
		letter = params[:letter] + "%";
		@songs = Song.where("name LIKE ?", letter).select("*");
	end

#will handling displaying the song info
end
