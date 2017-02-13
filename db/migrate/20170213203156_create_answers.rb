class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :text, { null: false}
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
