class AddBusinessColumnToUsers < ActiveRecord::Migration
 def up
    	add_column :users ,:business_name ,:string
    	add_column :users ,:businesss_address, :string
    	add_column :users ,:business_phone, :string

   end

  def down
  	remove_column :users ,:business_name
  	remove_column :users ,:businesss_address
  	remove_column :users ,:business_phone
  end
end
