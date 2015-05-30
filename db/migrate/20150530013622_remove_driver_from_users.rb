class RemoveDriverFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :driver, :boolean
  end
end
