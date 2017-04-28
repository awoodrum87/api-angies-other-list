class Review < ApplicationRecord
  belongs_to :reviewers, foreign_key: 'reviewer_id'
end
