class AddCapacityToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :capacity, :integer
  end
end
