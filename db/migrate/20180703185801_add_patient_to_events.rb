class AddPatientToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :patient, foreign_key: true
  end
end
