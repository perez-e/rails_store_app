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
		@categories = Category.all
	end

	def create
		product = params[:product].permit(:name, :description, :price)
		name, description, price = product[:name], product[:description], product[:price].to_f
		p = Product.create(name: name, description: description, price: price)

		params[:categories].each do |category_id|
			c = Category.find(category_id)
			p.categories << c
		end

		redirect_to product_path(p)
	end

	def edit
		id = params[:id]
		@product = Product.find(id)
		@categories = Category.all
	end

	def update
		id = params[:id]
		p = Product.find(id)
		p.name = params[:product][:name]
		p.price = params[:product][:price].to_f
		p.description = params[:product][:description]
		p.save

		p.categories.clear

		params[:categories].each do |category_id|
			c = Category.find(category_id)
			p.categories << c
		end

		redirect_to product_path(p)
	end

	def destroy
		id = params[:id]
		product = Product.find(id)
		product.destroy

		redirect_to "/products"
	end
end
