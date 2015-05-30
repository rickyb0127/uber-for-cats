class RidersController < ApplicationController
  def index
    @current_appointments = Appointment.where(user_id: current_user.id, completed: nil)
    @completed_appointments = Appointment.where(user_id: current_user.id, completed: true)
  end
end
