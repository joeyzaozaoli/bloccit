class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.map.with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      else
        post.title = post.title
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end

=begin
The following appears that it should have worked, but it doesn't. Why?
def index
  @posts = Post.all.map.with_index do |post, index| # Vs. solution, I chained the map method.
    if index % 5 == 0
      post.title = "SPAM"
    else
      post.title = post.title
    end
  end
end

The following doesn't appear to have worked, but it does. Why?
def index
  @posts = Post.all
  @posts.each.with_index do |post, index| # Vs. map method, each method should just return the original array.
    if index % 5 == 0
      post.title = "SPAM"
    end
  end
end
=end
