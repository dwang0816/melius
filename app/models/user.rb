class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email

    
    belongs_to :workspace
    has_many :reviews 

end
