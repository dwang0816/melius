class Review < ApplicationRecord
  validates :rating, presence: true
  validates :comment, presence: true
  validates_inclusion_of :rating, in: 0..5

  belongs_to :user
end
