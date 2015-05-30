class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :driver_id
      t.integer :user_id
      t.string :pickup_location
      t.string :dropoff_location
      t.time :pickup_time
      t.time :dropoff_time
      t.boolean :completed
    end
  end
end
