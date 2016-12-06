class CreateQuestionOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :question_orders do |t|
      t.integer :survey_id
      t.integer :question_id
      t.integer :position

      t.timestamps
    end
    add_index :question_orders, [:survey_id, :question_id], unique: true
  end
end
