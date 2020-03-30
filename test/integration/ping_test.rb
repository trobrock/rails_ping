# frozen_string_literal: true

require 'test_helper'

class PingTest < ActionDispatch::IntegrationTest
  test 'renders the status' do
    get '/ping'

    assert_response :service_unavailable

    expected_response = <<~TEXT.chomp
      status:SERVICE UNAVAILABLE
      good_check:OK
      bad_check:SERVICE UNAVAILABLE
    TEXT
    assert_equal expected_response, response.body
  end
end
