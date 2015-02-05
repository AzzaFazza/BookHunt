class PostsController < ApplicationController
		def index
			@posts = Post.all
			@posts.sort{|a,b| b[:upvoteCount] <=> a[:upvoteCount]}
		end

		def new
			@posts = Post.new(post_params)
		end

		def show
			@post = Post.find(params[:id])
		end

		def new

		end

		def create

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
