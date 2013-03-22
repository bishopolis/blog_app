class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create 
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
  end

  def destroy
  end
end
