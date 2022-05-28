class CreateQuestionTagMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :question_tag_maps do |t|
      t.integer :question_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
