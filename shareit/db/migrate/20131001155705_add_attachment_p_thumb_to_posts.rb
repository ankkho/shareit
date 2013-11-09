class AddAttachmentPThumbToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :p_thumb
    end
  end

  def self.down
    drop_attached_file :posts, :p_thumb
  end
end
