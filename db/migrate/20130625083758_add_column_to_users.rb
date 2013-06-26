class AddColumnToUsers < ActiveRecord::Migration
   def up
    	add_column :users ,:company ,:string
    	add_column :users ,:contact_name, :string
    	add_column :users ,:username, :string

   end

  def down
  	remove_column :users ,:company
  	remove_column :users ,:contact_name
  	remove_column :users ,:username
  end
end
