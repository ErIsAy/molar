class CreateMedHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :med_histories do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10
      t.string :q11
      t.string :q12
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
