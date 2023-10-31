class UsersController < ApplicationController
  def index
    @users = User.all
    render "index"
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(uid: params[:user][:uid], pass: params[:user][:pass], age: params[:user][:age])
    user.save
    redirect_to root_path
    
    
  #   existing_user = User.find_by(uid: params[:uid])

  #   if existing_user
  #     redirect_to root_path, notice: "入力されたユーザー名は既に存在しています。"
    
  #   else
  #     bcrypted_pass = BCrypt::Password.create(params[:pass])
  #     @user = User.new(uid: params[:uid], password_digest: bcrypted_pass, age: params[:age])
      #@user.save
    #end
    
  end
  
  #render 'top/login'

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end
end