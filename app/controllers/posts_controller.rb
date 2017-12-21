class PostsController < ApplicationController
  before_action :set_post, only: [:update, :destroy]
  # before_action :authenticate_user
  # authorization needs to be built as well

  # GET /posts
  def index
    if params[:user_id]
      @posts = Post.where(user_id: params[:user_id])
    else
      @posts = Post.all
    end

    render json: @posts
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: 422
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: 422
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.fetch(:post, {})
    end
end
