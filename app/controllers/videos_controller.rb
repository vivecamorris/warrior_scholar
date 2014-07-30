class VideosController < ApplicationController

	def show
		@video = Video.find(params[:id])

		@prev_vid = Video.prev_vid(@video)
		@next_vid = Video.next_vid(@video)
	end


	
end
