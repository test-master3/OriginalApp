class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @room = Room.first
    @message = Message.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿に成功しました！"
    else
      render :new, alert: "投稿に失敗しました"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end