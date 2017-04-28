class AddReviewerToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :reviewer, foreign_key: true
  end
end
