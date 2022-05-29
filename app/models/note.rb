class Note < ActiveRecord::Base
  belongs_to :destination

  validates :overall_rating, presence: true
  validates :additional_notes, length: {in: 10..1000}
end