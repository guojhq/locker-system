class CreateOrganizationRegistrations < ActiveRecord::Migration
  def change
    create_table :organization_registrations do |t|
      t.integer :registrar_id
      t.integer :registration_id

        t.timestamps null: false
    end
    add_index :relationships, :follower_id
    add_index :relationships, :followed_id
    add_index :relationships, [:follower_id, :followed_id], unique: true

  end
end
