class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.user_id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      render :new
    end
  end
end
