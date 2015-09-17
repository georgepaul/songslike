class User < ActiveRecord::Base


def self.user_from_facebook_mobile params

	u = User.new
	u.name = params[:name]
	u.image_url = params[:picture]
	u.gender = params[:gender]
	u.location = params[:location]
	u.token = params[:token]
	u.uid = params[:uid]
	u.save!

	return u

end

def self.find_by_facebook_id uid

return User.where(:uid => uid)

end

end
