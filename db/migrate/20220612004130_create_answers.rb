class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.integer :answer_thread_id
      t.integer :user_id
      t.integer :status
      t.text :detail

      t.timestamps
    end
  end
end
