# this code works to create and update a reviewer. Edit with caution
class Review < ApplicationRecord
  belongs_to :reviewer
  validates :review_date, presence: true
  validates :review_text, presence: true
end
