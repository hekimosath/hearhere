class SessionsController < ApplicationController
  #ログイン関係コントローラ
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to "/"
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to "/"
  end

  def register
  end

  def createuser
    redirect_to "/"
  end
end
