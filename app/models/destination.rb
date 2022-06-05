class Destination < ActiveRecord::Base
  has_many :notes, :dependent => :destroy

  validates :country, presence: true
  validates :city, presence: true
end