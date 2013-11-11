class AddFrstnLstnImgLinkToUserData < ActiveRecord::Migration
  def change
    add_column :user_data, :firstname, :string
    add_column :user_data, :lastname, :string
    add_column :user_data, :img_link, :string
  end
end
