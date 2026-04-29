class TripsController < ApplicationController
  before_action :require_login
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @trips = Trip.all.order(visited_at: :desc)
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.build(trip_params)
    if @trip.save
      redirect_to @trip, notice: "旅行記録を投稿しました！"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to @trip, notice: "旅行記録を更新しました！"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path, notice: "旅行記録を削除しました！"
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def correct_user
    unless @trip.user == current_user
      redirect_to trips_path, alert: "権限がありません"
    end
  end

  def trip_params
    params.require(:trip).permit(:title, :address, :visited_at, :comment, :photo)
  end
end
