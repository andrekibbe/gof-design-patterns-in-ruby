class ProductController
  attr_reader :product
  def show id
    @product = ProductFinder.find id
  end
end
