module UserDataHelper
  
 #displays total posts created by users
  def total_post
    @user = UserData.find(1)
    @post = @user.posts.count()
  end
  


  def users_posts
  	@p_titles = $user.posts.select(:title,:id)
  end

  
end
