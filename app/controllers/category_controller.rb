class CategoryController < ApplicationController
  
  
  def index
  @c = Category.all
  end

  def new
    @c = Category.new
  end

  def show
  end

  def create
    @cat = Category.create(category)
    
    if @cat.save
      redirect_to post_home_path
      flash[:success] = 'new category successfully created!!'
    end
     
  end

  def update
  end

  def destroy
  end

  def edit
  end
  
  
  
  private
  
  def category
   params.require(:category).permit(:title,:desc) 
  end
    
  
  
  
  
end
