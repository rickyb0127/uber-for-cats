class FooController < ApplicationController
  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(params.require(:driver).permit(:username, :password))
    if @driver.save
      session[:driver_id] = @driver.id
      redirect_to drivers_path
    else
      render :new
    end
  end
end
