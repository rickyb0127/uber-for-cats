class Driver < ActiveRecord::Base

  has_secure_password
  has_many :appointments, through: :user
  has_one :car

end
