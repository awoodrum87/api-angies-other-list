# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_one :reviewer
  has_many :reviews, through: :reviewer
end
