class UsersController < ApplicationController
  def index
    @user=User.all
  end

  before_action :set_user, only: %i[:show, :edit, :update, :destroy]
  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.requier(:user).permit(:email, :password)
  end
end
