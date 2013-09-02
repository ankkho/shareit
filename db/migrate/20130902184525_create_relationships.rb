class CreateRelationships < ActiveRecord::Migration
  
  
  def up
    create_table :relationships, :id => false do |t|

      t.integer :user_data_id
      t.integer :follower_id
      t.integer :following_id
      t.integer :posts_id
      
      puts "relationships model have been created.."
      
      
      t.timestamps
    end
  end
  
  
  
  def down
    drop_table :relationships
  end
  
  
  
  
end
