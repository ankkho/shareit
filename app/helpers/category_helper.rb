module CategoryHelper
  
  def all_cat
    @all_cat = Category.select(:id,:title)
  end
  
  
end
