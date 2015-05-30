class DriverController < ApplicationController
  def new

  end

  def create
    @driver = Driver.find_by(username: params[:username])
    if @driver && @driver.authenticate(params[:password])
      session[:driver_id] = @driver.id
      flash[:notice] = "You are signed in as a driver"
      redirect_to drivers_path
    else
      render :new
    end
  end

  def destroy
    session[:driver_id] = nil
    flash[:notice] = "You are signed out"
    redirect_to root_path
  end
end
