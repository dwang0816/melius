class Rating < ApplicationRecord
    belongs_to :review_user, class_name: "User"
    belongs_to :rated_review, class_name: "Review"
end
