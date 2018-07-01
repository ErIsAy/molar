class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :type
      t.text :note
      t.string :status
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
