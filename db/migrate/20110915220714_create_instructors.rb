class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :knowledge
      t.date :hired_at

      t.timestamps
    end
  end
end
