class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :dream_time
      t.string :dream_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
