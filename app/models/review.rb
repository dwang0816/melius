class Review < ApplicationRecord
  has_many :user_ratings, foreign_key: :user_id
  has_many :users, through: :review_user_ratings, source: :review_user
  belongs_to :coworker, class_name: "User"
end
