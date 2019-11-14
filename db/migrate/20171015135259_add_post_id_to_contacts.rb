class AddPostIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :post_id, :integer
  end
end
