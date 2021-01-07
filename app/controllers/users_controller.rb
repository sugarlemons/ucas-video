class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #user = User.new
    if @user.save
      redirect_to new_session_path
    else
      flash[:danger]='注册失败，用户名重复或密码错误'
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
