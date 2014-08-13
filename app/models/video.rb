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
				data_no_turbolinks_attribute = false
			else
				next_vid = "/map"
				data_no_turbolinks_attribute = true
			end

			return next_vid, data_no_turbolinks_attribute

	end


end
