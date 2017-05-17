class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.update_attributes params[:user].permit(:firstname, :lastname, :age)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

end
