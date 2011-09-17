class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :student_id
      t.integer :classroom_id
      t.boolean :paid

      t.timestamps
    end
  end
end
