require 'test_helper'

class ShowTimeThenSeeSubscribersTest < ActionDispatch::IntegrationTest
  test "see time then subscribers" do
    get root_path
    assert_response :success
    assert_template "dashboard/show_time"
    assert_select 'a#go-to-subscribers'
    get subscribers_path
    assert_response :success
    assert_template "subscribers/index"
    assert_select 'tr', Subscriber.count + 1
  end
end
