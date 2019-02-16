class CommentsController < ApplicationController

	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    # redirect_to post_path(@post)
    render 'posts/create_comments'
  end

  def edit
     @post = Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
  end

 def destroy
    @post= Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
    #redirect_to @comment
     flash[:notice] = "Comment deleted"

  end


  def update
     @post = Post.find(params[:post_id])
     @comment = Comment.find(params[:id])
     @comment.update(comment_params)
      flash[:notice] = "Comment Updated"

   redirect_to post_path(@post)

  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end


