class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy!
  end

end
