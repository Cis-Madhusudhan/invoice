class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook,:twitter]
  # Setup accessible (or protected) attributes for your model
  #attr_accessible  :contact_name,  :company, :username
  validates_acceptance_of :terms_and_conditions
   #validates :contact_name, :email, :company, :username, :presence => true
   #has_many :services
   	def self.find_for_facebook_oauth(auth, signed_in_resource=nil)

      
  		user = User.where(:provider => auth.provider, :uid => auth.uid).first
      timestamp=Time.now.to_i 
  		unless user

        if(auth.provider=='facebook')
    		user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
        else
           user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:"#{timestamp}_abc@gmail.com",
                         password:Devise.friendly_token[0,20]
                         )
         end 
  		end
      
  		user
	end
	def self.new_with_session(params, session)
    	super.tap do |user|
      		if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        		user.email = data["email"] if user.email.blank?
      		end
    	end
  	end
end
