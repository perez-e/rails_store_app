class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		id = params[:id]
		@category = Category.find(id)
	end

	def new
	end

	def create
		category = params[:category].permit(:name)
		Category.create(category)
		
		redirect_to "/categories"
	end
end
