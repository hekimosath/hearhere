class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
