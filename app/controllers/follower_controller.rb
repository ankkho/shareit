class FollowerController < ApplicationController
 
  def index
    @followers = $user.relationships
    
  end
 
 
  def new
    @user_follower = Relationship.new
  end

  def create
    @user = UserData.find(1)

    @user_follower =  @user.relationships.create(:follower_id => params[:u_id]) 

    if @user_follower.save
      redirect_to user_home_path
      flash[:success] = "You are now following " + @user.firstname
    end
  else
     flash[:alert] = "Sorry, an error Occured!!"
  end


  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
  


  private

  def followers_id
#params.require(:u_id).permit(:id)
  end
  
  
  
  
end
