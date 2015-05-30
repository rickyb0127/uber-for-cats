class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :driver_id
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      
    end
  end
end
