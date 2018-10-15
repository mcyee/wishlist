class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @claimlist = @user.claimlist
    @wantlist = @user.wantlist
  end
end
