class Profile < ActiveRecord::Base

self.inheritance_column = :_type_disabled

def self.user_from_facebook_mobile params
	p = Profile.new
		p.facebook_id = params['facebook_id']
		p.facebook_token = params['facebook_token']
		p.name = params['name']
		p.email = params['email']
	p.save

	return p
	
end

def self.find_by_facebook_id facebook_id

if facebook_id
return where(:facebook_id => facebook_id)[0]
end
return false
end

end
