class Relationship < ActiveRecord::Base
  
  belongs_to :user_data, :foreign_key =>  'user_data_id', dependent: :destroy

end
