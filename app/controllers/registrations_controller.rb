class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for signing up cool cat!"
      redirect_to riders_path
    else
      render :new
    end
  end
end
