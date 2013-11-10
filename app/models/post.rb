class Post < ActiveRecord::Base
  
  belongs_to :user_data, :foreign_key => 'user_data_id'
  
  #paperclip
  has_attached_file :p_thumb, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images"
end

