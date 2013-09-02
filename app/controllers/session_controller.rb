class SessionController < ApplicationController
  



  def new
    render :layuot => false  
  end


  def create
    @session = UserData.where(user_data) 
    if @session
      redirect_to root_path and return
    end
  else
    render :text => 'an error occured'
  end



  def edit
  end



  def update
  end
  
  
  
  
  private

def user_data
  params.require(:login).permit(:email,:password)
end



  
  
  
  
  
  
end
