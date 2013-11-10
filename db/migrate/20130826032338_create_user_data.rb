class CreateUserData < ActiveRecord::Migration
  
  def self.up
    create_table :user_data do |t|
      
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :image_link       
      
      
      t.timestamps
    end
  end
  
  
  def self.down
    drop_table :user_data
  end
  
  
  
  
  
end
