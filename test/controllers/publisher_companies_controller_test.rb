require "test_helper"

class PublisherCompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publisher_companies_index_url
    assert_response :success
  end

  test "should get show" do
    get publisher_companies_show_url
    assert_response :success
  end
end
