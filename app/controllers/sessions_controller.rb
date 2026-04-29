class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to trips_path, notice: "ログインしました！"
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが違います"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "ログアウトしました"
  end

  def guest_login
    user = User.find_or_create_by!(email: "guest@example.com") do |u|
      u.name = "ゲストユーザー"
      u.password = SecureRandom.urlsafe_base64
    end
    session[:user_id] = user.id
    redirect_to trips_path, notice: "ゲストとしてログインしました！"
  end
end
