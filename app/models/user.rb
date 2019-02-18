class User < ApplicationRecord
    has_many :recipes
    validates_presence_of :username, :password
    has_secure_password
end
