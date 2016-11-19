class SessionsController < ApplicationController
  def create
    # render text: request.env['omniauth.auth'].to_yaml
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = @user.id
    redirect_to countries_path
  end
  
  def auth_hash
    request.env['omniauth.auth']
  end

  def destroy
    reset_session
    redirect_to countries_path
  end
end
