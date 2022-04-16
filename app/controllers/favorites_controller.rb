class FavoritesController < ApplicationController
  before_action :require_user_logged_in
    
  def create
    
    #byebug
    
    #user = User.find(params[:user_id])
    user = current_user
    micropost = Micropost.find(params[:micropost_id])
    current_user.specify_fav(user, micropost)
    flash[:success] = 'お気に入りに設定しました。'
    #redirect_to user
    redirect_back(fallback_location: root_path)

  end

  def destroy
    #user = User.find(params[:user_id])
    user = current_user
    micropost = Micropost.find(params[:micropost_id])
    current_user.un_specify_fav(user, micropost)
    flash[:success] = 'お気に入りの設定を解除しました。'
    #redirect_to user
    redirect_back(fallback_location: root_path)
  end
  
end
