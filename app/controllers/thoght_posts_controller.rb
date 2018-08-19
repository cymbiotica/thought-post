class ThoghtPostsController < ApplicationController
  before_action :set_thoght_post, only: [:show, :update, :destroy]

  # GET /thoght_posts
  def index
    @thoght_posts = ThoghtPost.order("created_at DESC")

    render json: @thoght_posts
  end

  # GET /thoght_posts/1
  # def show
  #   render json: @thoght_post
  # end

  # POST /thoght_posts
  def create
    @thoght_post = ThoghtPost.new(thoght_post_params)

    if @thoght_post.save
      render json: @thoght_post, status: :created, location: @thoght_post
    else
      render json: @thoght_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thoght_posts/1
  def update
    if @thoght_post.update(thoght_post_params)
      render json: @thoght_post
    else
      render json: @thoght_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thoght_posts/1
  def destroy
    @thoght_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thoght_post
      @thoght_post = ThoghtPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def thoght_post_params
      params.require(:thoght_post).permit(:title, :body)
    end
end
