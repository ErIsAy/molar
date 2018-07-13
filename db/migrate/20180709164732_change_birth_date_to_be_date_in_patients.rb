class ChangeBirthDateToBeDateInPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :birth_date
    add_column :patients, :birth_date, :date
  end
end
