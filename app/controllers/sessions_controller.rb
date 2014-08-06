class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(access_code: params[:session][:access_code])
  	if user && user.used == false
  		sign_in user
      @video = Video.find(1)
      # commented out for DEMO DAY! Can reuse same access code
  		# user.update_column(:used, true)
      @next_vid = Video.next_vid(@video)
  		redirect_to video_url(@video.id)
  	 else
       @showFirst = false;
       flash[:error] = 'Invalid Access Code. Click <a id ="apply-link" href="https://warrior-scholar-project.slideroom.com/#/Login">here</a> to apply.'
  		 render 'static_pages/home'
    end
  end

  def destroy
  end

end
