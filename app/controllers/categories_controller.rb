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

	def edit
		id = params[:id]
		@category = Category.find(id)
	end

	def update
		id = params[:id]
		category = Category.find(id)
		category.name = params[:category][:name]
		category.save

		redirect_to category_path(category)
	end

	def destroy
		id = params[:id]
		category = Category.find(id)
		category.destroy

		redirect_to "/categories"
	end


end
