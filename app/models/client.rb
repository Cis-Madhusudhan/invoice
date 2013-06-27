class Client < ActiveRecord::Base
	validates_presence_of :name,:business_name,:client_type,:country_id
end
