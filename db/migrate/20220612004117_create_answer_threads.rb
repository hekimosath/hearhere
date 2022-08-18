class CreateAnswerThreads < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_threads do |t|
      t.integer :create_user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
