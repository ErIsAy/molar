class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.integer :birth_date
      t.string :address
      t.string :apt_suite
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone, limit: 5
      t.string :email

      t.timestamps
    end
  end
end
