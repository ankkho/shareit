class UserData < ActiveRecord::Base
  
  has_many :posts  
  has_many :relationships
  
  validates :email,:password,:firstname,:lastname, :presence => true
  
  
end
