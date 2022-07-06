require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "checks if the product have a name" do
      category_name = "trees"
      @category = Category.new({name: category_name})
      @category.save!
      product_name = 'cliff'
      price = 10
      quantity = 2
      description = 'test'
      @product = Product.new( {name: product_name, price_cents: price, quantity: quantity , category_id: @category.id, description: description})
      @product.save!
      expect(@product).to be_valid
    end
    it "checks if the product have no name" do
      @category = Category.new({name: "trees"})
      @category.save!
      price = 10
      quantity = 2
      description = 'test'
      @product = Product.new( {name: nil, price_cents: price, quantity: quantity , category_id: @category.id, description: description})
      @product.save!
      expect(@product).to_not_be_valid
    end
  end
end
