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
end
