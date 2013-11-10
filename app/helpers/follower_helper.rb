module FollowerHelper

def total_followers
	@total_followers = $user.relationships.select(:follower_id).where(:user_data_id => 1).count()

end

def followers_details
 
 @f = $user.relationships.pluck(:following_id)
 @followers_details =  Userdata.find(@f[0])
  
end


end
