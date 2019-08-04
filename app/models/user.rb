class User < ApplicationRecord
    include Gravtastic
    gravtastic

    has_secure_password
    validates_uniqueness_of :email

    
    belongs_to :workspace
    has_many :reviews

    mount_uploader :image, ImageUploader

    def user_image_main
        return self.image.variant(resize: '300x300')
    end

end
