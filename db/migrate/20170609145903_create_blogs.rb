class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :user_name
      t.string :title
      t.string :country
      t.string :city
      t.string :place
      t.text :article
      t.string :photo_url
      t.string :date_traveled

      t.timestamps
    end
  end
end
