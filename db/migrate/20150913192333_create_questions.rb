class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
