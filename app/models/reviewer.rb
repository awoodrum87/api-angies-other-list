class Reviewer < ApplicationRecord
  # has_many :reviews
  belongs_to :user
end
