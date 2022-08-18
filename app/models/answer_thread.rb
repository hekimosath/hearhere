class AnswerThread < ApplicationRecord
    #Relations
    has_many :answer, dependent: :destroy
    belongs_to :user, foreign_key: 'create_user_id'
end
