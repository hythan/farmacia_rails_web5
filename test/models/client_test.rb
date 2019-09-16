require 'simplecov'
SimpleCov.start 'rails'
require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create a client" do
    assert_difference 'Client.count', 1 do
      Client.create weight: 75, gender: 'male'
    end  
  end

  test "don't create client without a gender" do
    assert_difference 'Client.count', 0 do
      Client.create weight: 97
    end
  end

  test "don't create client without a weight" do
    assert_difference 'Client.count', 0 do
      Client.create gender: 'female'
    end
  end


end

