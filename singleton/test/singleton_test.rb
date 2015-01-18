require 'test_helper'
require 'product'
require 'product_controller'

PRODUCT = Product.new "Tomato", :fruit

describe ProductController do
  it "cannot be access more than once" do
    -> { ProductController.new }.must_raise NoMethodError
  end

  it "retrieves a product" do
    controller = ProductController.instance
    controller.show
    controller.product.must_equal PRODUCT
  end
end
