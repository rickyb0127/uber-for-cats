class User < ActiveRecord::Base
  has_secure_password
  has_many :appointments, through: :driver
end
