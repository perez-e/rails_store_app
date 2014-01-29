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
end
