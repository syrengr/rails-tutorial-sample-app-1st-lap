class UsersController < ApplicationController
  def show
    @user = User.find(1)
  end

  def new
    @user = User.new
  end

  def create
    @user = USer.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
