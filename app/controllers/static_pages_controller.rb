class StaticPagesController < ApplicationController
    before_action :signed_in_user, only: [ :map, :map2]

  def home
      @showFirst ||= true
      @video = Video.find(1)
  end

  def map
    current_user 
    @current_user.ip_address = request.remote_ip
    @current_user.save

    #loads hardcoded
    @content = StaticPagesHelper.hardcoded_content
    @location =  StaticPagesHelper.hardcoded_location

    #the following adds users to the map
    User.add_users_to_map(@content, @location)

    render status: 308
    # render :layout => "map_layout"

  end

  def map2
    current_user 
    @current_user.ip_address = request.remote_ip
    @current_user.save

    #loads hardcoded
    @content = StaticPagesHelper.hardcoded_content
    @location =  StaticPagesHelper.hardcoded_location

    #the following adds users to the map
    User.add_users_to_map(@content, @location)

    # render :layout => "map_layout"
  end

  def mentors

    render :layout => "mentors_layout"

  end



end
