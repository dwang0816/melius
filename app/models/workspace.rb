class Workspace < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :name
    has_many :users
    
end
