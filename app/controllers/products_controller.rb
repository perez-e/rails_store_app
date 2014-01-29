class ProductsController < ApplicationController
	def homepage
	end

	def index
		@products = Product.all
	end

	def show
		id = params[:id]
		@product = Product.find(id)
	end

	def new
	end

	def create
		product = params[:product].permit(:name, :description, :price)
		p = Product.create(product)

		params[:categories].each do |category_id|
			c = Category.find(category_id)
			p.categories << c
		end

		redirect_to "/products"
	end

	def edit
		id = params[:id]
		@product = Product.find(id)
	end

	def update
		id = params[:id]
		product = Product.find(id)
		product.name = params[:product][:name]
		product.price = params[:product][:price]
		product.description = params[:product][:description]
		product.save

		product.categories.destroy

		params[:categories].each do |category_id|
			c = Category.find(category_id)
			product.categories << c
		end

		redirect_to product_path(product)
	end

	def destroy
		id = params[:id]
		product = Product.find(id)
		product.destroy

		redirect_to "/products"
	end
end
