class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :user_comments
      t.references :blog, index: true, foreign_key: true

      t.timestamps
    end
  end
end