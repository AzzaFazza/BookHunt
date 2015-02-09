class PostsController < ApplicationController
		def index
			@posts = Post.all
			@posts.sort{|a,b| b[:upvoteCount] <=> a[:upvoteCount]}
		end

		def new
			@post =  Post.new(params[:post].permit(:title,:content))
		end

		def show
			@post = Post.find(params[:id])
		end

		def new

		end

		def create
			@post = Post.new(params[:post].permit(:title, :content, :poster, :upvoteCount))
			if @post.save
				redirect_to posts_path, :notice => "Your Book Submitted for Approval"
			else
				render "new"
			end
		end

		def edit

		end

		def update

		end

		def destroy

		end

		def updateCount
			@post = Post.find(params[:upvoteCount])
		end
		helper_method :updateCount

		private
		def post_params
			params.require(:post).permit(:title,:content, :poster, :upvoteCount)
		end

end
