class UsersController < ApplicationController



def update

	@what = @current_user
	redirect_to map_url
end

end
