 require 'bcrypt'

class UserData < ActiveRecord::Base
  
  has_many :posts  
  has_many :relationships
  
  
  validates :email,:password,:firstname,:lastname, :presence => true
  
  
  
  
  
  
  #performs the hash operation for users password
  def self.password
    
    
    
  end
  
  
  
end
