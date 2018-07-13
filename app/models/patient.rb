class Patient < ApplicationRecord
  has_many :events
  has_many :med_histories
  has_many :notes
end
