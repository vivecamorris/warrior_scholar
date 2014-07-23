class StaticPagesController < ApplicationController
    before_action :signed_in_user, only: [:video1, :video2, :video3,
     :video4, :video5]
    before_action :setShowFirst


  def home
      # @showFirst ||= true
  end

  def help
  end

  def video1
  end

  def video2
  end

  def video3
  end

  def video4
  end

  def video5
  end

  def map
    # user = current user ---!!!! how do I find this
    # request.remote_ip
    # user.ip_address = request.remote_ip
    # user.save
    #the following creates new users
    content = []
    location = []
    User.all.each do |user|
      cont = ['<div class="info_content">' +
        '<h3>' + user.fname + " " + user.lname.to_s + '</h3>' +
        '<p>' + user.map_comment.to_s + '</p>' +
        '</div>']
      loc = ['', user.latitude.floor, user.longitude.floor, user.id]

      location.push(loc,)
      content.push(cont,)
    end

    @content = content
    @location = location
 
    @user = User.find_by(remember_token: cookies[:remember_token]).fname

    render :layout => "map_layout"


  end




  private

    def signed_in_user
      unless signed_in?
            #store_location
          @showFirst = false;
          render "static_pages/home", notice: "Please sign in." unless signed_in?
        end



  end
    
    def setShowFirst
      @showFirst ||= true
    end


end
