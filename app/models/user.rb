class User < ApplicationRecord
    has_many :requests
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :email, presence: true,uniqueness: true, format: { with: VALID_EMAIL_REGEX }
 
    # mount_uploader :user_image, UserImageUploader
end