class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :description
      t.references :dental_chart, foreign_key: true

      t.timestamps
    end
  end
end
