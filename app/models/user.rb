class User < ApplicationRecord
    has_many :articles
    validates :username, 
               presence: true, 
               length: {minimum: 3, maximum: 25}, 
               uniqueness: { case_sensitive: false }
    VALID_EMAIL_REGEX = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, 
                presence: true, 
                uniqueness: { case_sensitive: false },
                format: { with: VALID_EMAIL_REGEX}
end
