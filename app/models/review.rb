class Review < ApplicationRecord
  belongs_to :reviewer
  # , foreign_key: 'reviewer_id'
end
