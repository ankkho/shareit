module FollowerHelper

def total_followers
	@total_followers = $user.relationships.select(:follower_id).where(:user_data_id => 1).count()

end

def followers_details
  @follower_id = $user.relationships.select(:follower_id).where(:user_data_id =>
  	1)

end


  def following
    @user = UserData.find(1)
    @following = UserData.find(@user)
  end



end
