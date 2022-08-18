class User < ApplicationRecord
    #Relations
    has_many :questions, dependent: :destroy
    has_many :answer_threads, dependent: :destroy, foreign_key: 'create_user_id'
    has_secure_password
    #name
    validates :name, {presence: true}
    #email
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    #password_digest
    validates :password_digest, {presence:true}
end
