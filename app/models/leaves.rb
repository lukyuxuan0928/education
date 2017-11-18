class Leaves < ApplicationRecord
  belongs_to :student

  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :student
end
