class UsersController < BaseController

  before_filter :authenticate_user!

  def profile
    @user = User.find(params[:id])
    #byebug
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params) ? redirect_to(profile_path(@user.id)) : render('edit')
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :phone, :web)
  end

end
