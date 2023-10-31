require 'bcrypt'
class User < ApplicationRecord
    has_secure_password
    #has_many :likes
    #has_many :like_tweets, through: :likes, source: :tweet
end