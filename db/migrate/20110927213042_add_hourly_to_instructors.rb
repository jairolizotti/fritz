class AddHourlyToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :hourly, :decimal
  end
end
