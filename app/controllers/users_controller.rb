class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Добро пожаловать на сайт!"
      redirect_to '/'
    else
      flash[:er] = "Ошибка!"
      render 'new'
    end
  end


  private def user_params
      params.require(:user).permit(:log, :password, :password_confirmation)
    end

end

