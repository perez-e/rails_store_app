# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  price       :float
#

class Product < ActiveRecord::Base
	has_many :combos
	has_many :categories, through: :combos

	validates :name, presence: true, length: {maximum: 25}
	validates :description, presence: true, length: {maximum: 255}
	validates :price, presence: true, numericality: true
end
