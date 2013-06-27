class Product < ActiveRecord::Base

	validates_presence_of :product_name,:quantity,:unit_cost
end
