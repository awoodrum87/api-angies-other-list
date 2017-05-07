# this code works to create and update a reviewer. Edit with caution
# class Reviewer < ApplicationRecord
#   belongs_to :user
# end

# add validates props to to the model
# validates :field, presence true
class Reviewer < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :username, presence: true
  validates :industry, presence: true

end
