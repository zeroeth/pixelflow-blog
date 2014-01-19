class BlogPostsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @blog_posts = BlogPost.order("blog_posts.created_at DESC").paginate(:per_page => 5, :page => params[:page])

	respond_with @blog_posts
  end


  def show
    @blog_post = BlogPost.find(params[:id])

	respond_with @blog_post
  end


  def new
    @blog_post = BlogPost.new

	respond_with @blog_post
  end


  def edit
    @blog_post = BlogPost.find(params[:id])
  end


  def create
    @blog_post = BlogPost.new(params[:blog_post])

	if @blog_post.save
		flash[:notice] = 'Blog post was successfully created.'
	end

	respond_with @blog_post
  end


  def update
    @blog_post = BlogPost.find(params[:id])

    if @blog_post.update_attributes(params[:blog_post])
		flash[:notice] = 'Blog post was successfully updated.'
	end

	respond_with @blog_post
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.xml
  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy

	respond_with @blog_post
  end
end
