class UserDataController < ApplicationController
  
  #displays the welcome page (homepage)
  def home
 render :layout => false   
  end
 
 #creates a new object for user_data
  def new
    render :layout => false   
    @user = UserData.new
  end

  #create a new user(signup)
  def create
    @user = UserData.new(user_data)
    if @user.save
    redirect_to user_home_path
    flash[:success] = 'Welcome  ' + @user.firstname + '!!' 
    end
    else
    flash[:alert] = "Sorry!! an error occured"     
  
  end

  #creates a new object to edit users profile data
  def edit
      @user = UserData.find(1)
  end

  #updates users profile data
  def update
    @user = UserData.find(1)
    
    if @user.update(user_data)
    redirect_to user_index_path
    flash[:success] = "Profile updated Successfully!!"
    end
    else
    flash[:alert] = "Sorry!! an error occured"

  end

  #displays users profile page
  def show
  end

  #displays users profile page
  def index
   # @user = UserData.find(1)
   # @user_post = @user.posts.load
  end
  
  
  
  
  private
  
  #contains params information (user_data -- :firstname, :lastname, :email, :password )  
  def user_data
  params.require(:user_data).permit(:firstname, :lastname, :email, :password)
  end
  
  
  
  
  
  
  
end
