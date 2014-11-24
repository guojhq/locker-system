class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :numberOfSemesters
      t.boolean :termsAccepted

      t.timestamps
    end
  end
end
