class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_create_params[:user])
    # raise
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_create_params
    params.permit(user: [:user_name, :email, :password, :password_digest])
  end
end
