module UserDataHelper
  
 #displays total posts created by users
  def total_post
    @user = UserData.find(1)
    @post = @user.posts.count()
  end
  
  
end
