class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザーを登録しました"
      redirect_to("/")
    else
      render(new_user_path)
    end
  end

  def purchases
    @purchases = Purchase.where(user_id: current_user.id)
  end

  def show
  end

  def edit
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
