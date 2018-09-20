class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(comment_params)
        @comment.user_id = current_user.id
        # @comment.user_id = Post.find(params[:user_id])
        @comment.save
        redirect_to post_path(@post)
    end

    # def create
    #     @comment = current_user.posts.comments.new(comment_params)
    #     if @comment.save
    #       flash[:success] = "Object successfully created"
    #       redirect_to post_path(@post)
    #     else
    #       flash[:error] = "Something went wrong"
    #       redirect_to 'new'
    #     end
    # end

    def destroy

    end

    def comment_params
        params.require(:comment).permit(:user_name, :title, :body)
    end

end
