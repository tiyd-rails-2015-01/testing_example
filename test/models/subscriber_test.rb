require 'test_helper'

class SubscriberTest < ActiveSupport::TestCase

  test "there is data" do
    assert Subscriber.count > 0
  end

  test "mason is mason" do
    assert_equal "Mason", subscribers(:mason).name
  end

  test "emails are unique" do
    bad_mason = Subscriber.new(name: "Not Mason", email: "mason@awesome.com")
    refute bad_mason.save
  end

  test "validations pass" do
    assert_difference "Subscriber.count", 1 do
      Subscriber.create(name: "Ashley",
        email: "ashley@awesome.com",
        in_state: false)
    end
  end
end
