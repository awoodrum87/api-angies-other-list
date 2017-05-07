# this code works to create and update a reviewer. Edit with caution
class Review < ApplicationRecord
  belongs_to :reviewer
# add validates props to to the model
  validates :review_date, presence: true
  validates :review_text, presence: true
end
