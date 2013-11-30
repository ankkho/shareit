class SessionController < ApplicationController
  
  
  def new
    render :layuot => false 
    @session = Session.new 
  end


  def create
   # begin
   # @session  = UserData.where(:email => user_data,:encrypted_password => user_data).pluck(:email,:encrypted_password)     
   # if @session != 
   # redirect_to root_path and return
   # end
   # rescue 
   # else    
   # render :text => 'an error occured' 
   end
  
    
    # begin
    # @email  = UserData.find_by_email(params[:email]) 
    # @password = UserData.find_by_encrypted_password(params[:encrypted_password])
    
    # if(params[:email] == @email && params[:encrypted_password] == @password)
      # redirect_to root_path and return
    # end
    # rescue 
  # else    
    # render :text => 'an error occured' 
  # end



  def edit
  end



  def update
  end
  
  
  
  
  private

def user_data
  params.require(:login).permit(:email,:encrypted_password)
end



  
  
  
  
  
  
end
