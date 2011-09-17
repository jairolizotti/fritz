class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :instructor_id
      t.string :room, :null => false

      t.timestamps
    end
  end
end
