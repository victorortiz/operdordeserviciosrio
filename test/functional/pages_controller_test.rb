require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get bienvenido" do
    get :bienvenido
    assert_response :success
  end

end
