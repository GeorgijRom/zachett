class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(log: params[:session][:log])
    if user && user.authenticate(params[:session][:pas])
      p "success login"
      log_in user
      redirect_to '/'
    else
      p "unsuccess login"      
      # Выдать сообщение об ошибке.
      flash[:danger] = 'Invalid email/password combination' # Не совсем верно!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  
end
