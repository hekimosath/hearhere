class Question < ApplicationRecord
    #user_id
    validates :user_id, {presence: true}
    #title
    validates :title, {presence: true}
    #detail
    validates :detail, {presence: true}

end
