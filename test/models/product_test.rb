require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "when creating new product" do
    product = products(:tshirt)
    expected_name = "pants"
    product.update(name: "pants")
    assert_equal product.name, expected_name
  end
end
