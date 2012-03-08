require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  fixtures :all

	test "view changelog" do
		get "/changelog"
		assert_response :success
	end

end

