class User < ApplicationRecord
    has_many :reviews
    belongs_to :workspace
end
