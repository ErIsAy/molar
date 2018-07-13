class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :f_name
      t.string :l_name
      t.string :specialty

      t.timestamps
    end
  end
end
