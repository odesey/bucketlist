class CommentsController < ApplicationController


	def create
		@comment = Comment.new(params[:comment])
		@comment.save!

		respond_to do |format|
			format.html do
				# render @comment, this is the short form of the followin line
				render :partial => 'comments/comment', :locals => { :comment => @comment}, :content_type => 'text/html'
			end

			format.js do
				# binding.pry
				render :template => 'comments/create', :locals => { :comment => @comment}, :content_type => 'text/javascript'
			end

			format.json do
				render :json => @comment
			end
		end
	end



		# render @comment
		# the following line does the same thing as the line directly above this one
		# render :partial => 'comments/comment', :locals => { :comment => @comment}, :content_type => 'text/html'
		# or if you want to render javascript, use the following line...needs a matching create.js.erb file in order to work
		# render :template => 'comments/create', :locals => { :comment => @comment} , content_type => 'text/javascript'

	def index
	end

	def show
	end

	def new
	end


end
