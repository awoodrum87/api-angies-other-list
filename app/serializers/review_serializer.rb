class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review_date, :review_text
end
