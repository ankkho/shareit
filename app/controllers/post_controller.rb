class PostController < ApplicationController
  
  #before_filter :authenticate_user_data!

  #displays all the posts of users
  def home
    @user = UserData.find(1)
    @post = Post.all

  end

  #creates a new post object
  def new
  @post = Post.new
  @post_thumb = Post.new
  end
  
  #creates a new post and uploads posts thumbnail
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
    
    
  #delets the post data 
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

    @post = Post.find(2)
    
  end
  
  
  #dislays a particular post
  def show
  @user = UserData.find(1)
  @users_post = Post.find(params[:id])
  end
  
  
  
  









  
  private
  
  def post_data
    params.require(:post).permit(:title, :data, :tag, :page_link, :p_thumb)
  end
  
  def post_id
    params.require(:post).permit(:id)
  end

  def post_thumbnail
    params.require(:post)
  end


  
  
  
  
  
  
  
end
