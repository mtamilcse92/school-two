class CreateSubScopes < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_scopes do |t|
      t.string :name
      t.string :key_question
      t.string :core_idea
      t.string :recommended_grade
      t.references :topic, foreign_key: true
      t.timestamps
    end
  end
end
