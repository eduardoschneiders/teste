class ProductsController < ApplicationController
  def index
    @products = Product.all
        a = @a
  end

  def view 
    @product = Product.find(params[:id])
  end

  def buy
    @product = Product.find(params[:id])
    @total = 0
    (1..300).each do |i|
      @total += i
    end
  end

  def destroy
    Product.delete_all
    redirect_to products_path
  end

  def create
    (1..10).each do
      count = Product.count
      Product.create({ name: "Product_#{count}", price: count * 100 })
    end

    redirect_to products_path
  end
end
