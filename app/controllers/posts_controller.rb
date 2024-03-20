class PostsController < ApplicationController
    before_action :authenticate_request, only: [:index, :show, :create]

    def index
        @posts = Post.all
        render json: @posts
    end

    def show
        @post =  Post.find(params[:id])
        render json: @post
    end

    def create
        @post = @current_user.posts.build(post_params)
        if @post.save
            render json: @post, status: :created
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.permit(:title, :content)
    end


end
