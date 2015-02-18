require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  setup do
  end

  test "the truth" do
    assert true
    refute false
  end

  test "tax calculation" do
    assert_equal 100, subscriptions(:jesss).price_with_tax
    assert_equal 107.5, subscriptions(:masons).price_with_tax
  end
end
