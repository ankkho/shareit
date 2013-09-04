class FollowerController < ApplicationController
 
  #displays all the users followers
  def index
    @follower = Relationship.find_by_user_data_id(1)
    @all_follower = UserData.where(:id => @follower.follower_id)
  end
 
  #creates an new followers object
  def new
    @follower = Relationship.new   
  end


  #creates an new follower
  def create
    @user = UserData.find(1)
    @follower = @user.relationships.create(:follower_id => @user.id)
    
    if @follower.save
      flash[:success] = "you are following" + @user.firstname
      redirect_to user_home_path
    end
  else
    flash[:alert] = "Sorry!! an error occured"
    redirect_to user_home_path
  end
  
  
  
  def update
  end
  

  def edit
  end


  #removes the followers id(unfollow)
  def destroy
  end


  
  def show
  end
  
  
  
  
  
end
