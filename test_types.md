Rails Testing:

Folders in Rails
`def setup`
`def test_name` vs `test "name" do`

Unit Tests:

assert
assert_equal
assert_in_delta
assert_raises(Error) do
  #code blows up
end
assert_difference
assert_no_difference

Fixtures:

.yml files
subscribers(:mason)

Controller Tests:

assert_response
assert_select(css_selector)
assert_select(css_selector, number_expected)
assert_redirected_to
assert_template

assigns(:instance_variable) # actually gives you back what's stored in that instance variable

Integration Tests:
