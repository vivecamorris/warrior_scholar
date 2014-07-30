class VideosController < ApplicationController

	def show
		@video = Video.find(params[:id])

		prev_and_next_vids(@video)
	end


	private

		def prev_and_next_vids(video)

			if video.id > 1
				@prev_vid = Video.find(video.id - 1)
			else
				@prev_vid = nil
			end

			if video.id < 6
				@next_vid = Video.find(video.id + 1)
			else
				@next_vid = nil
			end

		end
end