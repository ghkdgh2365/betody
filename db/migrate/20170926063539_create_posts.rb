class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :my_name
      t.string :category
      t.string :title
      t.text :content
      t.string :need_day
      t.date :start_day
      t.date :end_day
      t.string :need_penalty
      t.integer :menu_id
      t.string :receiver_name
      t.string :receiver_number
      t.string :info_agree
      t.string :is_success
      t.text :success_content
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
