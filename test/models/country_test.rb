require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  test "Countries must have a name" do
    country = Country.new
    assert country.invalid?
  end
end
