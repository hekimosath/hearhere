class CreateQuestionTagMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :question_tag_masters do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
