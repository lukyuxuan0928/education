class Student < ApplicationRecord
  has_many :leaves

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :course

  def to_s # display name?
    name
  end
end
