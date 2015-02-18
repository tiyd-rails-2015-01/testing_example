require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get show_time" do
    get :show_time
    assert_response :success
    assert_select("a[href='http://disney.com']") # This is a bad idea because it's too specific
    assert_select("p.subscriber_name", Subscriber.count)
  end

  test "should get render_time" do
    get :render_time
    assert_response :success
    assert_template "show_time"
  end

  test "should get go_to_time" do
    get :go_to_time
    assert_redirected_to dashboard_show_time_path
  end

end
