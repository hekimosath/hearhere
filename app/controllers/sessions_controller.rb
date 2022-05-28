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
    user = User.find_by(email: params[:session][:email].downcase)
    #登録済みメールアドレスだった場合
    if user
      raise "登録済みメールアドレスです"
    else
      User.create(name: params[:session][:name],email: params[:session][:email].downcase,password: params[:session][:password],password_confirmation: params[:session][:password])
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to "/"
      else
        render 'new'
      end
    end
  end
end
