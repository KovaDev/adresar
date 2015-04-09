class UsersController < ApplicationController

  def profile
    @user = User.select(:username, :email, :admin).find(params[:id])
    #byebug
  end

  def index
    @users = User.all
  end

end
