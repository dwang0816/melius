class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email
    belongs_to :workspace
    has_many :user_ratings, foreign_key: :review_user_id
    has_many :rated_users, through: :user_ratings
    has_many :rated_user_reviews, foreign_key: :coworker_id, class_name: "Review"
end
