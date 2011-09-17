class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.integer :instructor_id
      t.string :phone

      t.timestamps
    end
  end
end
