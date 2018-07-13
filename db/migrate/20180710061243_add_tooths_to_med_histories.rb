class AddToothsToMedHistories < ActiveRecord::Migration[5.2]
  def change

    (1..32).each do |i| 
      add_column :med_histories, :"t#{i}", :string
    end

  end
end
