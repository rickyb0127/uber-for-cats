class DriversController < ApplicationController
  def index
    @driver = current_driver
    @completed_appointments = Appointment.where(driver_id: current_driver.id, completed: true)
    @current_appointments = Appointment.where(driver_id: current_driver.id, completed: nil)
  end
end
