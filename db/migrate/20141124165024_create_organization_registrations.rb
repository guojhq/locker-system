class CreateOrganizationRegistrations < ActiveRecord::Migration
  def change
    create_table :organization_registrations do |t|
      t.integer :registrar_id
      t.integer :registration_id

        t.timestamps null: false
    end
    add_index :organization_registrations, :registration_id
    add_index :organization_registrations, :registrar_id
    add_index :organization_registrations, [:registration_id, :registrar_id], unique: true

  end
end
