class AuthenticationController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for signing in cool cat!"
      redirect_to riders_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Laterz, hope you have a purrr-fect day"
    redirect_to root_path
  end
end
