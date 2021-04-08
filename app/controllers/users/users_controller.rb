class Users::UsersController < ApplicationController

  def index
  end



  def edit
    @user = User.find(params[:id])
    @item =  
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to request.referer
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, items_attributes:[:name, :maker])
  end

end
