class AddFinishAtToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :finish_at, :date
  end
end
