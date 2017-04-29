class AddUserToReviewers < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviewers, :user, foreign_key: true
  end
end
