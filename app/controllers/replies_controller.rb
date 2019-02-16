class RepliesController < ApplicationController

   before_action do
    @comment = Comment.find(params[:comment_id])
  end


def create
	@reply =  Reply.new(:body=>params[:reply][:body],:comment_id=>params[:reply][:comment_id])
	@reply.save
	@replies=Reply.where(:comment_id=> params[:reply][:comment_id])
	flash[:notice]= "replies created"
	render 'comments/create_Replies'

end
end