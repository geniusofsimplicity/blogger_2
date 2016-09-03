class TagsController < ApplicationController
	def index
		@tags = Tag.all.uniq
	end
	def show
		@tag = Tag.find(params[:id])		
	end

	def destroy
		tag = Tag.find(params[:id])

		flash.notice = "Tag'#{tag.name}' Destroyed!"

		tag.destroy
		
		redirect_to tags_path
	end
	
end
