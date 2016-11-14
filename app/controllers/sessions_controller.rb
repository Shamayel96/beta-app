class SessionsController < ApplicationController
  def create
<<<<<<< HEAD
    #render text: request.env['omniauth.auth'].to_yaml
        @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = @user.id
    redirect_to countries_path
  end

  def destroy
  	reset_session
    redirect_to countries_path
=======
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
>>>>>>> master
  end
end
