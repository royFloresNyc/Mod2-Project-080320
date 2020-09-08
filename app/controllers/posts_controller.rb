class PostsController < ApplicationController
    def index
        @posts = Post.all
    end 

    def new
        @post = Post.new
    end 

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
    end 

    def create
        post = Post.create(post_params)
        redirect_to posts_path
    end 

    def update
        post = Post.find(params[:id])
        post.update(likes: params[:likes])
        redirect_to posts_path
    end 

    private

    def post_params
        params.require(:post).permit(:supe_id, :content, :likes, :post_file)
    end 
end
