class StaticPagesController < ApplicationController
    before_action :signed_in_user, only: [:video1, :video2, :video3,
     :video4, :video5]
    before_action :setShowFirst


  def home
      @showFirst ||= true
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
    render :layout => "map_layout"
  end




  private

    def signed_in_user
      unless signed_in?
            #store_location
          redirect_to signin_url, notice: "Please sign in." unless signed_in?
        end



  end
    
    def setShowFirst
      @showFirst ||= true
    end


end
