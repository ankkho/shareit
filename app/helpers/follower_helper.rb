module FollowerHelper
  
  
  def total_follower
    @user = UserData.find(1)
    @rel = @user.relationships.count 
  end
  
  
  
end
