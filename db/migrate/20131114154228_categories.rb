class Categories < ActiveRecord::Migration
 
 
 def self.up
   
   create_table :categories do |t|
   t.string :title
   t.string :desc
   t.integer :post_id
   t.string :img_link
   end
   
 end
 
 
 
 def self.down
 drop_table :categories  
 end
 
 
 
 
 
 
 
end
