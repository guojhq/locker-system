class CreateOrganizationRegistrations < ActiveRecord::Migration
  def change
    create_table :organization_registrations do |t|
      t.integer :registrar_id
      t.integer :registration_id

      t.timestamps
    end
  end
end
