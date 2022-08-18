class AddStatusToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :status, :integer
  end
end
