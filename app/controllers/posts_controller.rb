class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)

        if @post.save
          flash[:success] = "Object successfully created"
          redirect_to posts_path
        else
          flash[:error] = "Something went wrong"
          redirect_to 'new'
        end
    end

    private
        def post_params
            params.require(:post).permit(:title, :body, :dream_time, :dream_type)
        end



end