class PostController < ApplicationController
  
  #displays all the posts of users
  def home
    @user = UserData.find(1)
    @post = Post.all
  end

  #creates a new post object
  def new
  @post = Post.new
  end
  
  #creates a new post
  def create
    @user = UserData.find(1)
    @post = @user.posts.build(post_data)
    if @post.save
      redirect_to post_index_path
      flash[:success] = "New Post created successfully!!"
    end
  else
     flash[:alert] = "Sorry, an error Occured!!"
  end
  
  #creates a new post object
  def edit
    @post = Post.find(params[:id])
  end

  #updates a  post object
  def update
     @post = Post.find(params[:id])

      if @post.update(post_data)
        redirect_to post_index_path
       flash[:success] = "Updated successfully!!"
      else
      render :action => "edit" 
    end
 end
    
    
  #deletes the post data 
  def destroy
    @post = Post.find(params[:id])
   if @post.destroy  
   redirect_to post_index_path
   flash[:success] = "Your Post have been deleted successfully!!"
   end
   else
   flash[:alert] = "Sorry!! An error occured"
  end


  #displays the post by user 
  def index
    @user = UserData.find(1)
    @user_post = @user.posts.load       
  end
  
  
  #dislays a particular post(through an id) in details
  def show
    @users_post = Post.find(post_id)
  end
  
  
  
  
  
  private
  
  def post_data
    params.require(:post).permit(:title, :data, :tag)
  end
  
  def post_id
    params.require(:post).permit(:id)
  end
  
  
  
  
  
  
  
  
  
  
  
end
