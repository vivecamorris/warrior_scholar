class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]


  def edit
    @user = current_user
  end

  def update
   @user.update(map_comment: params[:user][:map_comment])
   redirect_to map_url
 end

  private
  def set_user
      @user = current_user
  end

end