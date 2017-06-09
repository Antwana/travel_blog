class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.datetime :date_created
      t.references :blog, index: true, foreign_key: true

      t.timestamps
    end
  end
end
