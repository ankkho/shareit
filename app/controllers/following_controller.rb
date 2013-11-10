class FollowingController < ApplicationController
  
  
  
  def new
  end

  def index
     @f = $user.relationships.pluck(:follower_id)
     
     @follower = UserData.find(@f[0])
  end

  def create
  end

  def destroy
  end
end
