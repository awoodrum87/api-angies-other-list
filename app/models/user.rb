# frozen_string_literal: true
# this code works to create and update a reviewer. Edit with caution

class User < ApplicationRecord
  include Authentication
  has_one :reviewer
  has_many :reviews, through: :reviewer
end
