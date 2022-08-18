class Answer < ApplicationRecord
    #Relation
    belongs_to :answer_thread
    belongs_to :user
end
