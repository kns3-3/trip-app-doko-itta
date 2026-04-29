class FavoritesController < ApplicationController
  before_action :require_login

  def create
    trip = Trip.find(params[:trip_id])
    current_user.favorites.create(trip: trip)
    redirect_to trip, notice: "お気に入りに追加しました！"
  end

  def destroy
    trip = Trip.find(params[:trip_id])
    favorite = current_user.favorites.find_by(trip: trip)
    favorite.destroy
    redirect_to trip, notice: "お気に入りを解除しました！"
  end
end
