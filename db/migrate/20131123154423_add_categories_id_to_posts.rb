class AddCategoriesIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :categories_id, :integer
  end
end
