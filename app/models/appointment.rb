class Appointment < ActiveRecord::Base
  belongs_to :user
  belongs_to :driver

  def est_pickup
    Time.parse("#{self.pickup_time + 10.minutes}")
  end
end
