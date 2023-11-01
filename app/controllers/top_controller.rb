require 'bcrypt'
class TopController < ApplicationController
  def main
    render "login"
  end
  
  def login
    user = User.find_by(uid: params[:uid])
    if user != nil
      login_password = BCrypt::Password.new(signup_password)
      if login_password == "my password" #←login_password.==(“my password”)
      redirect_to root_path
      else
        render "login"
      end
    end
  end
  
  def logout
    session.delet(:login_uid)
    redirect_to root_path
  end
end
