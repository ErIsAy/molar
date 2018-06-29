class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :ssn
      t.integer :birthdate
      t.string :email

      t.timestamps
    end
  end
end
