class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :business_name
      t.string :business_email
      t.string :name
      t.string :type
      t.string :company_size
      t.string :zip_code
      t.string :mobile
      t.string :state
      t.integer :country_id
      t.string :fax
      t.text :internal_notes
      t.text :business_address
      t.string :business_phone
      t.string :pan
      t.string :tan
      t.string :city

      t.timestamps
    end
  end
end
