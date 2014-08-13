class Video < ActiveRecord::Base





	def self.prev_vid(video)
		if video.id > 1
				prev_vid = Video.find(video.id - 1)
		else
				prev_vid = "/"
		end

		return prev_vid
	end


	def self.next_vid(video)

			if video.id < 5
				next_vid = Video.find(video.id + 1)
			else
				next_vid = "/map"
			end

			return next_vid

	end


end
