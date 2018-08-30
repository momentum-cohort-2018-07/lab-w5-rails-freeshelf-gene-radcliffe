class CreateBooktrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :booktrackers do |t|
      t.integer :book_id
      t.integer :user_id
      t.string :title
      t.string :author
      t.date :checkout
      t.date :checkin

      t.timestamps
    end
  end
end
