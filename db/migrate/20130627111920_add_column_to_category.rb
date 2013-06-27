class AddColumnToCategory < ActiveRecord::Migration
   def up
    	add_column :categories ,:category_date_added,:date
    	add_column :categories ,:category_status, :boolean, :default=>true
   end

  def down
  	remove_column :categories ,:category_date_added
  	remove_column :categories ,:category_status
  end
end
