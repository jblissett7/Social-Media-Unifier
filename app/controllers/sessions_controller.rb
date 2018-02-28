class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    @client = User.client(@user)
    session[:user_id] = @user.id
    redirect_to posts_path
  end
  
  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = "Successfully logged out"
    end
    redirect_to root_path
  end
 
  protected
 
  def auth_hash
    request.env['omniauth.auth']
  end
end