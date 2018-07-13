class MedHistory < ApplicationRecord
  belongs_to :patient
  # serialize :c1
end
