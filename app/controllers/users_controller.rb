class UsersController < ApplicationController
  def new
	 @user = User.new
  end

  def create
  	#params.permit!
    @user = User.new(params[:user])
    if @user.save && @user!=nil
        session['loginedUser'] = @user
        redirect_to :controller=>'home',:action=>'login'
    else
        redirect_to :controller=>'home',:action=>'registration'
    end
  end
end
