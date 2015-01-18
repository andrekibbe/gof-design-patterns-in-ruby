require 'test_helper'
require 'product_controller'
require 'product'
require 'product_finder'

describe ProductController do
  it "finds a product" do
    PRODUCT = Product.new "Tomato", :fruit
    controller = ProductController.new
    controller.show(1)

    controller.product.must_equal PRODUCT
  end
end
