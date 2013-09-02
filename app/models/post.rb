class Post < ActiveRecord::Base
  
  belongs_to :post, :foreign_key => 'users_id', :class_name => 'User' 
  
end

