class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(access_code: params[:session][:access_code])
  	if user && user.used == false
  		sign_in user
  		user.update_column(:used, true)
  		render 'static_pages/video1'
  	else
  		render 'new'
  end

  end

  def destroy
  end




end
