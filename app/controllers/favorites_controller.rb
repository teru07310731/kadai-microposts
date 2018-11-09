class FavoritesController < ApplicationController
  before_action :require_user_logged_in


  def create
    micropost = Micropost.find(params[:micropost_id])
    micropost.fav(current_user)
    flash[:success] = 'お気に入りしました。'
    redirect_to_current_user
  end


  def destroy
    micropost = Micropost.find(params[:micropost_id])
    micropost.unfav(current_user)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to_current_user
  end
end