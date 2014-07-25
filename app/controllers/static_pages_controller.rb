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
      current_user
    user = @current_user
    user.ip_address = request.remote_ip
    user.save
    #the following creates new users
    content = [
        ['<div class="info_content" id="comment">' +
        '<h3>Rob Henderson</h3>' +
        '<p>Rob was one of the 2014 Yale Warrior Scholars and a seven-year veteran of the Air Force</b> based at Ramstein Air Base in Germany. When he first went back to school after serving, he resigned himself to taking classes online from public colleges:. </br></br><em> It raised my expectation for myself. It made me think, &lsquo;Maybe I can go to a school like this.&rsquo;</em></div>'],
        ['<div class="info_content" id = "comment">' +
        '<h3>Chris Howell</h3>' +
        '<p>Prior to coming to Yale, Chris spent nine years in the Australian Army, most of them in Special Operations. He served in Afghanistan in 2006 with the Combined Special Operations Task Force. He had always wanted to go to college, but doubted his ability to succeed. </br></br><em>I had done poorly in high school. But when I decided to leave the military in 2008, my brother, David, a Ph.D. student at Sydney University, told me that I needed to learn <em> how </em> to be a student... He helped me to think beyond my experience in the serve, so that when I got to Yale, I could hit the ground running.</em> </br></br> Howell went on to co-found the Warrior-Scholar Project and graduated from Yale as an Eli Whitney Scholar in May 2014. </p>' +
        '</div>'],
         ['<div class="info_content" id = "comment">' +
        '<h3>Jesse Reising</h3>' +
        '<p>As a Yale undergraduate, Jesse -- currently a student at Harvard Law School -- attended Officer Candidates School and planned to start his career as an officer in the U.S. Marine Corps. But that dream ended when he a tackle collision left him partially paralyzed in the 2010 Yale-Harvard football game. Disqualified from the Marines, Reising decided to serve those who serve in the military by co-founding the Warrior-Scholar Project. </br></br><em> Veterans transitioning to college likely have not used academic skills since high school and have difficulties adjusting to a fundamentally different social and cultural environment,” says Reising, who hopes to become a federal prosecutor. “Unfortunately, these challenges often lead to veterans’ dropping out of college before earning their degrees. We believe that veterans have the potential not only to succeed in college, but to be leaders in the classroom. We seek to unlock that potential...Our goal is not only that the veterans are going to go to respected universities, and complete university, but that they’re going to become leaders on campus and represent the veteran voice on campus.</em></p>' +
        '</div>'],
         ['<div class="info_content" id="comment">' +
        '<h3>David Carrel</h3>' +
        '<p>One of the vets in the 2012 Yale Warrior-Scholars pilot course, David did not want to &lsquo; play catch up &rsquo; when he matriculated at Central Texas Community College. David served for 12 years as a staff sargeant in the U.S. Army. </br></br><em>After fighting in Iraq for years and surviving, my biggest fear is the thought of being outflanked by freshmen... It was hard for a 31-year-old man to realize he does not really know how to read scholarly articles and to actually pull information out of and analyze an article. You foget that writing is a process, not an event.</em></br></br> Carrel is now a student Vassar College.</p>' +
        '</div>'],
         ['<div class="info_content" id="comment">' +
        '<h3>Jean Pierre Gordillo</h3>' +
        '<p>Jean Pierre, a former Army convoy driver who attended the Warrior-Scholar Project in te summer of 2013, was most intimidated by the potential cultural divide between the civilian students and the veterans.</br></br><em>I left feeling I could share something of my military story, rather than being judged for it -- and that that story gives me a unique perspective.</em></br></br> Jean Pierre aspires to a career in U.S. foreign affairs and is currently finishing his bachelor&rsquo;s degree at Miami Dade College. He recently submitted applications to master&rsquo; programs at eight selective universities.</p>' +
        '</div>']
    ]
    location = [
          ['', 32, -90, 5],
          ['', 33, -115, 4],
          ['', 38, -76, 3],
          ['', 26, -80, 2],
          ['', 37, -100, 1]
        ]
    User.all.each do |user|
      if user.map_comment != nil
      cont = ['<div class="info_content" id="comment">' +
        '<h3>' + user.fname + " " + user.lname + '</h3>' +
        '<p>' + user.map_comment + '</p>' +
        '</div>']
        newid=user.id+5
      loc = ['', user.latitude.floor, user.longitude.floor, newid]

      location.push(loc,)
      content.push(cont,)
    end
    end

    @content = content
    @location = location
 

    @what = @current_user

    @user = user


    render :layout => "map_layout"

  end

   def map2
    current_user
    user = @current_user
    user.ip_address = request.remote_ip
    user.save
    #the following creates new users
    content = [
        ['<div class="info_content" id="comment">' +
        '<h3>Rob Henderson</h3>' +
        '<p>Rob was one of the 2014 Yale Warrior Scholars and a seven-year veteran of the Air Force</b> based at Ramstein Air Base in Germany. When he first went back to school after serving, he resigned himself to taking classes online from public colleges:. </br></br><em> It raised my expectation for myself. It made me think, &lsquo;Maybe I can go to a school like this.&rsquo;</em></div>'],
        ['<div class="info_content" id = "comment">' +
        '<h3>Chris Howell</h3>' +
        '<p>Prior to coming to Yale, Chris spent nine years in the Australian Army, most of them in Special Operations. He served in Afghanistan in 2006 with the Combined Special Operations Task Force. He had always wanted to go to college, but doubted his ability to succeed. </br></br><em>I had done poorly in high school. But when I decided to leave the military in 2008, my brother, David, a Ph.D. student at Sydney University, told me that I needed to learn <em> how </em> to be a student... He helped me to think beyond my experience in the serve, so that when I got to Yale, I could hit the ground running.</em> </br></br> Howell went on to co-found the Warrior-Scholar Project and graduated from Yale as an Eli Whitney Scholar in May 2014. </p>' +
        '</div>'],
         ['<div class="info_content" id = "comment">' +
        '<h3>Jesse Reising</h3>' +
        '<p>As a Yale undergraduate, Jesse -- currently a student at Harvard Law School -- attended Officer Candidates School and planned to start his career as an officer in the U.S. Marine Corps. But that dream ended when he a tackle collision left him partially paralyzed in the 2010 Yale-Harvard football game. Disqualified from the Marines, Reising decided to serve those who serve in the military by co-founding the Warrior-Scholar Project. </br></br><em> Veterans transitioning to college likely have not used academic skills since high school and have difficulties adjusting to a fundamentally different social and cultural environment,” says Reising, who hopes to become a federal prosecutor. “Unfortunately, these challenges often lead to veterans’ dropping out of college before earning their degrees. We believe that veterans have the potential not only to succeed in college, but to be leaders in the classroom. We seek to unlock that potential...Our goal is not only that the veterans are going to go to respected universities, and complete university, but that they’re going to become leaders on campus and represent the veteran voice on campus.</em></p>' +
        '</div>'],
         ['<div class="info_content" id="comment">' +
        '<h3>David Carrel</h3>' +
        '<p>One of the vets in the 2012 Yale Warrior-Scholars pilot course, David did not want to &lsquo; play catch up &rsquo; when he matriculated at Central Texas Community College. David served for 12 years as a staff sargeant in the U.S. Army. </br></br><em>After fighting in Iraq for years and surviving, my biggest fear is the thought of being outflanked by freshmen... It was hard for a 31-year-old man to realize he does not really know how to read scholarly articles and to actually pull information out of and analyze an article. You foget that writing is a process, not an event.</em></br></br> Carrel is now a student Vassar College.</p>' +
        '</div>'],
         ['<div class="info_content" id="comment">' +
        '<h3>Jean Pierre Gordillo</h3>' +
        '<p>Jean Pierre, a former Army convoy driver who attended the Warrior-Scholar Project in te summer of 2013, was most intimidated by the potential cultural divide between the civilian students and the veterans.</br></br><em>I left feeling I could share something of my military story, rather than being judged for it -- and that that story gives me a unique perspective.</em></br></br> Jean Pierre aspires to a career in U.S. foreign affairs and is currently finishing his bachelor&rsquo;s degree at Miami Dade College. He recently submitted applications to master&rsquo; programs at eight selective universities.</p>' +
        '</div>']
    ]
    location = [
          ['', 32, -90, 5],
          ['', 33, -115, 4],
          ['', 38, -76, 3],
          ['', 26, -80, 2],
          ['', 37, -100, 1]
        ]
    User.all.each do |user|
      if user.map_comment != nil
      cont = ['<div class="info_content" id="comment">' +
        '<h3>' + user.fname + " " + user.lname + '</h3>' +
        '<p>' + user.map_comment + '</p>' +
        '</div>']
        newid=user.id+5
      loc = ['', user.latitude.floor, user.longitude.floor, newid]

      location.push(loc,)
      content.push(cont,)
    end
    end

    @content = content
    @location = location
 

    @what = @current_user

    @user = user


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
