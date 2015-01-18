class ProductController
  attr_reader :product
  include Singleton

  def show
    @product = PRODUCT
  end
end
