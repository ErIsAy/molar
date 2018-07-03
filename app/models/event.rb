class Event < ApplicationRecord
  validates :title, presence: true
  attr_accessor :date_range
  belongs_to :patient

  accepts_nested_attributes_for :patient

  def all_day_event?
    start == start.midnight && self.end == self.end.midnight ? true : false
  end
end
