class CreatePosts < ActiveRecord::Migration
 
  def self.up
    create_table :posts do |t|
      
      t.string :title
      t.string :data
      t.string :tag
      t.integer :users_id
      t.string :img_link
      

      t.timestamps
    end
  end
  
  
  
  
  def self.down
drop_table
  end  
  
end
