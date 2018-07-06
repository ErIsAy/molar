class Patient < ApplicationRecord
  has_many :events
  has_one :med_history
end
