class Question < ApplicationRecord
    #Relation
    belongs_to :user

    #user_id
    validates :user_id, {presence: true}
    #title
    validates :title, {presence: true}
    #detail
    validates :detail, {presence: true}
    #status
    validates :status, {presence: true}
    #定数
    #status
    STATUS_ACCEPTING = 1 #受付中
    STATUS_COMPLETED = 2 #完了
    STATUS_CANCELED = 10 #取り下げ済み
    STATUS_OPERATION_CANCELED = 101 #運営取り下げ済み
end
