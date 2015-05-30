class Car < ActiveRecord::Base
  belongs_to :driver

  def full_car
    "#{self.year} #{self.color} #{self.make} #{self.model}"
  end
end
