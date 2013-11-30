class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def all_cat
    @all = Category.all   
    gon.categories = @all.pluck(:id,:title,:desc)
  end
    
  
  
  
    
end
