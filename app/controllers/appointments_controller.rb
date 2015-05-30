class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params.merge(user_id: current_user.id, driver_id: Driver.order("RANDOM()").first.id))
    if @appointment.save
      flash[:notice] = "You have a set up a pick up appointment"
      redirect_to riders_path
    else
      render :new
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params.merge(dropoff_time: Time.zone.now))
      flash[:notice] = "Appointment Completed"
      redirect_to drivers_path
    else
      render :new
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    flash[:notice] = "Trip was cancelled"
    redirect_to riders_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:pickup_location, :dropoff_location, :pickup_time, :completed, :dropoff_time)
  end
end
