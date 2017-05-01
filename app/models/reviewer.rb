# this code works to create and update a reviewer. Edit with caution
# class Reviewer < ApplicationRecord
#   belongs_to :user
# end

class Reviewer < ApplicationRecord
  belongs_to :user
  has_many :reviews
end
