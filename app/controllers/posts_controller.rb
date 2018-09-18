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

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to post_path(@post)
          flash[:success] = "Object was successfully updated"
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to posts_path
        else
            flash[:error] = 'Something went wrong'
            redirect_to posts_path
        end
    end
    


    private
        def post_params
            params.require(:post).permit(:title, :body, :dream_time, :dream_type)
        end



end