class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations id: false do |t|
      t.string :name, null:false
      t.string :streetAddress
      t.string :city
      t.string :country
      t.string :postalCode
      t.string :phone
      t.string :email
      t.timestamps
    end
    add_index :organizations, :name, unique: true
  end
end
