class UserData < ActiveRecord::Base
  
  has_many :posts  
  
  validates :email,:password,:firstname,:lastname, :presence => true
  
  
end
