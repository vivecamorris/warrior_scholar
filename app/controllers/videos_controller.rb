class VideosController < ApplicationController
    before_action :signed_in_user

	def show
		@video = Video.find(params[:id])

		@prev_vid = Video.prev_vid(@video)
		@next_vid = Video.next_vid(@video)

	end


		
end
