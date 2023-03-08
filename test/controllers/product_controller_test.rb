require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get products_path
    assert_response :success
    assert_select '.product', 2 # 2 products in fixtures
  end

  test 'should render a detailed product page' do
    get product_path(products(:PS5))
    assert_response :success
    assert_select 'h1', products(:PS5).title
  end
end
