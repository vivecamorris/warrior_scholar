class User < ActiveRecord::Base
  before_create :create_remember_token
  
  geocoded_by :ip_address
  after_validation :geocode


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def self.add_users_to_map(content, location)
    @content=content
    @location=location
    
    User.all.each do |user|
      if user.map_comment != nil
          cont = ['<div class="info_content" id="comment">' +
            '<h3>' + user.fname + " " + user.lname + '</h3>' +
            '<p>' + user.map_comment + '</p>' +
            '</div>']
          
          newid=user.id+5
          loc = ['', user.latitude.floor, user.longitude.floor, newid]

          @location.push(loc,)
          @content.push(cont,)
      end
    end
  end



private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end

end
