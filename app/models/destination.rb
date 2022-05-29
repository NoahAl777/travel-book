class Destination < ActiveRecord::Base
  has_many :notes

  validates :country, presence: true
  validates :city, presence: true
end